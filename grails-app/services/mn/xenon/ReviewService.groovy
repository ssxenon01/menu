package mn.xenon

import grails.plugin.springsecurity.SpringSecurityUtils
import grails.transaction.Transactional
import mn.xenon.exceptions.GrantedAuthorityException
import org.bson.types.ObjectId

@Transactional
class ReviewService {

    def springSecurityService
    def fileService

    List list(params = [:]){
        params.max = (params.max?:6) as Integer
        params.offset = (params.offset?:0) as Integer
        def match = [disabled:[$ne:true],draft:[$ne:true],'module.news':[$gte:new Date()]]
        if(params.tenant && ObjectId.isValid(params.tenant))
            match._id = new ObjectId(params.tenant)
        
        return Tenant.collection.aggregate(
                [$match: match],
                [$unwind:'$reviewList'],
                [$project:[reviewList:1,_id: 0]],
                [$sort:['reviewList.dateCreated': -1]],
                [$skip:params.offset],
                [$limit:params.max]
        ).results().collect{ toMap(it?.reviewList,true) }
    }

    Integer count(params = [:]){
        def match = [disabled:[$ne:true],draft:[$ne:true],'module.news':[$gte:new Date()]]
        if(params.tenant && ObjectId.isValid(params.tenant))
            match._id = new ObjectId(params.tenant)

        return Tenant.collection.aggregate(
                [$unwind:'$reviewList'],
                [$match: match],
                [$group:[_id:'$reviewList']],
                [$group:[_id:"DistictCount",count:[$sum:1]]]
        ).results()?.getAt(0)?.count ?:0
    }

    def create(params){
        if(params.tenant && ObjectId.isValid(params.tenant)){
            ObjectId id = new ObjectId()
            def query = [_id:new ObjectId(params.tenant)]
            if(!SpringSecurityUtils.ifAnyGranted('ROLE_ADMIN'))
                query.adminList = [$in:[springSecurityService.currentUser.username]]

            def newsInstance = [
                    _id:id,
                    name:params.name,
                    dateCreated: new Date(),
                    parent: query._id,
                    author:springSecurityService.currentUser?.id,
                    lastUpdated:new Date(),
                    description:params.description,
                    profileImage:ObjectId.isValid(params.profileImage)?new ObjectId(params.profileImage):null,
                    pageImage:ObjectId.isValid(params.pageImage)?new ObjectId(params.pageImage):null,
            ]
            Tenant.collection.update(query,[$push:[reviewList: newsInstance], $inc:[reviewCount:1]])
            return toMap(newsInstance)
        }
        return null
    }

    def get(id,withException = true){
        if(id && ObjectId.isValid(id))
            return toMap(Tenant.collection.findOne(['reviewList._id':new ObjectId(id)],['reviewList._id.$': 1])?.reviewList?.getAt(0))
        else
            return null
    }

    def update(params,withException = true){
        def query = ['reviewList._id':new ObjectId(params.id)]
        if(!SpringSecurityUtils.ifAnyGranted('ROLE_ADMIN')){
            if(Tenant.collection.count(['reviewList._id':new ObjectId(params.id),adminList:[$in:[springSecurityService.currentUser.username]]]) == 0)
                throw new GrantedAuthorityException(['News',params.id])
        }

        def old = Tenant.collection.findOne(query,['reviewList.id.$': 1])?.reviewList?.getAt(0)
        if(old){
            fileService.merge(params,old)
        }
        Tenant.collection.update(query,[$set:[
                'reviewList.$.name':params.name,
                'reviewList.$.lastUpdated':new Date(),
                'reviewList.$.description':params.description,
                'reviewList.$.profileImage':ObjectId.isValid(params.profileImage)?new ObjectId(params.profileImage):null,
                'reviewList.$.pageImage':ObjectId.isValid(params.pageImage)?new ObjectId(params.pageImage):null
        ]])
        return get(params.id)
    }

    def delete(id,withException = true){
        def query = ['reviewList._id':new ObjectId(id)]
        if(!SpringSecurityUtils.ifAnyGranted('ROLE_ADMIN')){
            if(Tenant.collection.count(['reviewList._id':new ObjectId(id),adminList:[$in:[springSecurityService.currentUser.username]]]) == 0)
                throw new GrantedAuthorityException(['News',id])
        }

        def old = Tenant.collection.findOne(query,['reviewList.id.$': 1])?.reviewList?.getAt(0)
        if(old){
            fileService.deleteFromInstance(old)
        }
        Tenant.collection.update( query, [$inc:[reviewCount:-1], $pull: [ 'reviewList':[_id:new ObjectId(id)]] ] );

        return null
    }

    def toMap(it , withParent = false){
        if(it){
            def instance = [
                    id:it._id.toString(),
                    name:it.name,
                    dateCreated: it.dateCreated,
                    description:it.description,
                    tenant:it.parent?.toString(),
                    lastUpdated: it.lastUpdated,
                    author:it.author?.toString(),
                    profileImage: it.profileImage?.toString(),
                    pageImage: it.pageImage?.toString(),
            ]

            if(withParent){
                def parent = Tenant.collection.findOne([_id: it.parent],[name:1,suffix:1])
                if(parent)
                    instance << [ tenantName:parent?.name , tenantSuffix:parent?.suffix ]
            }

            return instance
        }else
            return [:]
    }
}
