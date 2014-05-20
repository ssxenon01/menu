package mn.xenon

import auth.User
import grails.plugin.springsecurity.SpringSecurityUtils
import grails.transaction.Transactional
import org.bson.types.ObjectId

@Transactional
class TenantService {

    def springSecurityService
    def list(params=[:]){
        params.max = Math.min(params.max as Integer ?: 21, 100)
        params.offset = params.offset?:0
        params.sort = params.sort ? params.sort : 'dateCreated'
        params.order = params.order ? params.order : 'desc'

        def query = [disabled:[$ne:true],draft:[$ne:true]]
        if(params.query){
            query.$or = [
                    ['name':[$regex:".*$params.query.*",$options:'i']],
                    ['suffix':[$regex:".*$params.query.*",$options:'i']],
                    ['name.mn':[$regex:".*$params.query.*",$options:'i']]
            ]
        }

        return Tenant.collection.find(query).sort([dateCreated:-1]).skip(params.offset as Integer).limit(params.max as Integer)
    }

    Integer count(params){
        def query = [disabled:[$ne:true],draft:[$ne:true]]
        if(params.query){
            query.$or = [
                    ['name':[$regex:".*$params.query.*",$options:'i']],
                    ['suffix':[$regex:".*$params.query.*",$options:'i']],
                    ['name.mn':[$regex:".*$params.query.*",$options:'i']]
            ]
        }
        return Tenant.collection.count(query)
    }

    Tenant create(params,withException = true){
        Tenant t = new Tenant(params)
        if(springSecurityService.isLoggedIn())
            t.author = springSecurityService.currentUser as User
        t.save(failOnError: withException)
    }

    def get(id){
        return Tenant.get(id)
    }

    def update(params,withException = true){

        if(!params.id || !ObjectId.isValid(params.id))
            return null

        def query = [_id:new ObjectId(params.id)]

        if(!SpringSecurityUtils.ifAnyGranted('ROLE_ADMIN')){
            query.adminList = [$in:[springSecurityService.currentUser.username]]
        }

        def tenantInstance = [
                name: params.name,
                address: params.address,
                description: params.description,
                email: params.email,
                facebookId: params.facebookId,
                twitterId: params.twitterId,
                fax: params.fax,
                phone: params.phone,
                website: params.website,
        ]

        if(params.location)
            tenantInstance.location = params.location

        Tenant.collection.update(query,[$set:tenantInstance])
    }

}
