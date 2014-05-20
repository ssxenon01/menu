import mn.xenon.auth.FacebookAuthProvider
import mn.xenon.auth.FacebookAuthService
import mn.xenon.auth.MongoUserDetailsService
import mn.xenon.databind.DateEditorRegistrar
import mn.xenon.json.JsonRestApiPropertyEditorRegistrar
import org.grails.datastore.mapping.transactions.DatastoreTransactionManager
import org.springframework.cache.ehcache.EhCacheFactoryBean
import org.springframework.security.access.hierarchicalroles.RoleHierarchyImpl

beans = {
    transactionManager(DatastoreTransactionManager) {
        datastore = ref("mongoDatastore")
    }
	userDetailsService(MongoUserDetailsService)

    jsonRestApiPropertyEditorRegistrar(JsonRestApiPropertyEditorRegistrar, ref("grailsApplication"))
    customPropertyEditorRegistrar(DateEditorRegistrar)

    imageCache(EhCacheFactoryBean) {
        // 30 min default
        timeToLive = 1800
        // 15 min
        timeToIdle = 900
        maxElementsInMemory = 150
        diskPersistent = false
        overflowToDisk = false
        cacheName = "imageCache"
    }

    roleHierarchy(RoleHierarchyImpl) {
        hierarchy = '''
            ROLE_ADMIN > ROLE_CONTENT_MANAGER
            ROLE_CONTENT_MANAGER > ROLE_USER
        '''
    }
    facebookAuthProvider(FacebookAuthProvider) {
        facebookAuthDao = ref('facebookAuthDao')
        facebookAuthUtils = ref('facebookAuthUtils')
        createNew = true
    }

    facebookAuthService(FacebookAuthService){
        springSecurityService = ref("springSecurityService")
        grailsApplication = ref("grailsApplication")
    }
}
