package mn.xenon.admin

import auth.User
import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Secured('ROLE_ADMIN')
@Transactional(readOnly = true)
class CategoryController {

    def springSecurityService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond mn.xenon.Category.list(params), model: [categoryInstanceCount: mn.xenon.Category.count()]
    }

    def create() {
        respond new mn.xenon.Category(params)
    }

    def show(mn.xenon.Category categoryInstance) {
        respond categoryInstance
    }
    @Transactional
    def save(mn.xenon.Category categoryInstance) {
        if (categoryInstance == null) {
            notFound()
            return
        }
        categoryInstance.author = springSecurityService.currentUser as User

        if (categoryInstance.hasErrors()) {
            respond categoryInstance.errors, view: 'create'
            return
        }

        categoryInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'categoryInstance.label', default: 'Category'), categoryInstance.id])
                redirect categoryInstance
            }
            '*' { respond categoryInstance, [status: CREATED] }
        }
    }

    def edit(mn.xenon.Category categoryInstance) {
        respond categoryInstance
    }

    @Transactional
    def update(mn.xenon.Category categoryInstance) {
        if (categoryInstance == null) {
            notFound()
            return
        }

        if (categoryInstance.hasErrors()) {
            respond categoryInstance.errors, view: 'edit'
            return
        }

        categoryInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Category.label', default: 'Category'), categoryInstance.id])
                redirect categoryInstance
            }
            '*' { respond categoryInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(mn.xenon.Category categoryInstance) {

        if (categoryInstance == null) {
            notFound()
            return
        }

        categoryInstance.delete flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Category.label', default: 'Category'), categoryInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'categoryInstance.label', default: 'Category'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
