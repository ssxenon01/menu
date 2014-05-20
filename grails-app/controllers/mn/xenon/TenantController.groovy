package mn.xenon

import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Secured('ROLE_ADMIN')
class TenantController {
    def springSecurityService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Tenant.list(params), model: [tenantInstanceCount: Tenant.count()]
    }

    def show(Tenant tenantInstance) {
        respond tenantInstance
    }

    def create() {
        respond new Tenant(params)
    }

    @Transactional
    def save(Tenant tenantInstance) {
        if (tenantInstance == null) {
            notFound()
            return
        }
        tenantInstance.author = springSecurityService.currentUser
        if (tenantInstance.hasErrors()) {
            respond tenantInstance.errors, view: 'create'
            return
        }

        tenantInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'tenantInstance.label', default: 'Tenant'), tenantInstance.id])
                redirect tenantInstance
            }
            '*' { respond tenantInstance, [status: CREATED] }
        }
    }

    def edit(Tenant tenantInstance) {
        respond tenantInstance
    }

    @Transactional
    def update(Tenant tenantInstance) {
        if (tenantInstance == null) {
            notFound()
            return
        }

        if (tenantInstance.hasErrors()) {
            respond tenantInstance.errors, view: 'edit'
            return
        }

        tenantInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Tenant.label', default: 'Tenant'), tenantInstance.id])
                redirect tenantInstance
            }
            '*' { respond tenantInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Tenant tenantInstance) {

        if (tenantInstance == null) {
            notFound()
            return
        }

        tenantInstance.delete flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Tenant.label', default: 'Tenant'), tenantInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'tenantInstance.label', default: 'Tenant'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
