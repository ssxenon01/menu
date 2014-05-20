package mn.xenon

import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured

class TenantRestController {
    def springSecurityService
    def tenantService
    def messageSource

    static allowedMethods = [create: "POST", update: "PUT", delete: "DELETE"]

    def list(){
        def result = [success:true]
        result.children = tenantService.list(params).collect{it}
        result.total = tenantService.count(params)

        render result as JSON
    }
    @Secured(['ROLE_USER'])
    def create() {
        def result = [success:true]
        def status = 200

        try {
            result.children = tenantService.create(request.JSON)

        }
        catch(Exception e) {
            result.message = e.getMessage()
            result.success = false
        }

        render text: result as JSON, contentType: 'application/json', status: status
    }

    def show() {
        def result = [success:true]
        def status = 200

        try {
            result.children = tenantService.get(params.id)
        }
        catch(Exception e) {
            result.message = e.getMessage()
            result.success = false
        }

        render text: result as JSON, contentType: 'application/json', status: status
    }

    @Secured(['ROLE_USER'])
    def update(){
        def result = [success:true]
        def status = 200

        try {
            result.children = tenantService.update(request.JSON.withNull())
        }
        catch(Exception e) {
            result.message = e.getMessage()
            result.success = false
        }

        render text: result as JSON, contentType: 'application/json', status: status
    }
    @Secured(['ROLE_USER'])
    def delete() {
        def result = [success:true]
        def status = 200

        try {
            result.children = tenantService.delete(params.id)
        }
        catch(Exception e) {
            result.message = e.getMessage()
            result.success = false
        }

        render text: result as JSON, contentType: 'application/json', status: status
    }

}
