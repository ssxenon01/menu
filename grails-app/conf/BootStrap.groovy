import auth.User
import grails.converters.JSON
import mn.xenon.json.CustomJSONMarshaller
import mn.xenon.json.JSONApiRegistry

class BootStrap {


    def grailsApplication

	def init = { servletContext ->
        if (User.count() == 0) {
            new User(firstname:'firstname',lastname:'lastname',username: 'admin@menu.mn', password: 'password', authorities: ['ROLE_ADMIN']).save(flush:true,failOnError: true)
        }





	}

    def jsonRestApiRegister() {
        JSON.registerObjectMarshaller(new CustomJSONMarshaller(application: grailsApplication))
        grailsApplication.domainClasses.each { domainClass ->
            def resource = domainClass.getStaticPropertyValue('expose', String)
            if (resource) {
                JSONApiRegistry.registry[resource] = domainClass.fullName
            }
        }
    }

}
