package mn.xenon

import auth.User
import grails.plugin.springsecurity.annotation.Secured
import org.bson.types.ObjectId

import javax.servlet.http.HttpServletResponse

@Secured('ROLE_ADMIN')
class AdminController {

    def fileService
    def springSecurityService

    def index() {}

    def tenant(){

    }

    def category(){
        if(params.id && ObjectId.isValid(params.id)){
            Category category = Category.get(params.id)
            if(!category){
                response.sendError(HttpServletResponse.SC_BAD_REQUEST)
                return;
            }
            if(request.method.equals('POST')){

                def prImage = request.getFile('prImage')
                def pgImage = request.getFile('pgImage')

                if(!prImage.empty){
                    def prFile = fileService.upload(prImage)
                    if(category.profileImage)
                        fileService.remove(category.profileImage)
                    category.setProfileImage(prFile)
                }
                if(!pgImage.empty){
                    def pgFile = fileService.upload(pgImage)
                    if(category.pageImage)
                        fileService.remove(category.pageImage)
                    category.setPageImage(pgFile)
                }
                bindData(category,params)
                category.save()
                render(view: 'categoryEdit' , model: [cat:category])
                return;
            }else if(params.edit){
                render(view: 'categoryEdit' , model: [cat:category])
                return;
            }else if(params.delete){
                category.delete()
            }else{
                render(view: 'categoryEdit' , model: [cat:category])
                return;
            }


        }else if(request.method.equals('POST')){
            def category = new Category()
            bindData(category,params)

            category.save(failOnError: true,flush: true)
            category.author = springSecurityService.currentUser as User

            render(view: 'categoryEdit' , model: [sector:category])
            return;
        }else if(params.edit){
            def category = new Category()
            render(view: 'categoryEdit' , model: [sector:category])
            return;
        }


        def sectorList = Category.list()

        return [sectorList:sectorList]
    }
}
