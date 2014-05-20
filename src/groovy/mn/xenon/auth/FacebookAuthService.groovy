package mn.xenon.auth

import auth.Role
import auth.User
import com.the6hours.grails.springsecurity.facebook.FacebookAuthToken
import grails.plugin.springsecurity.userdetails.GormUserDetailsService
import grails.plugin.springsecurity.userdetails.GrailsUser
import org.slf4j.Logger
import org.slf4j.LoggerFactory
import org.springframework.dao.OptimisticLockingFailureException
import org.springframework.security.core.GrantedAuthority
import org.springframework.security.core.authority.GrantedAuthorityImpl
import org.springframework.security.core.authority.SimpleGrantedAuthority
import org.springframework.social.facebook.api.Facebook
import org.springframework.social.facebook.api.FacebookProfile
import org.springframework.social.facebook.api.impl.FacebookTemplate

class FacebookAuthService {

    private Logger log = LoggerFactory.getLogger(getClass())

    def grailsApplication
    def springSecurityService

    def create(FacebookAuthToken token) {
        User user
        if(springSecurityService?.isLoggedIn()){
            user = springSecurityService?.currentUser as User
        }else{
            Facebook facebook = new FacebookTemplate(token.accessToken.accessToken)
            FacebookProfile fbProfile = facebook.userOperations().userProfile
            user = User.findByUsernameOrFacebookId(fbProfile.email,fbProfile.id)
            if(!user){
                user = new User()
                user.firstname = fbProfile.firstName
                user.lastname = fbProfile.lastName
                user.birthDate = Date.parse('MM/dd/yyyy',fbProfile.birthday)
                user.gender = Gender.strToEnum(fbProfile.gender)
                user.accountExpired = false
                user.accountLocked = false
                user.enabled = true
                user.username = fbProfile.email
                user.password = token.accessToken.accessToken
                user.passwordExpired = false
            }
        }
        user.accessToken = token.accessToken?.accessToken
        user.accessTokenExpires = token.accessToken?.expireAt
        user.facebookId = token.uid
        if(user.authorities){
            user.authorities << ['ROLE_USER','ROLE_FACEBOOK']
        }else{
            user.authorities = ['ROLE_USER','ROLE_FACEBOOK']
        }
        user.save(flush: true, failOnError: true)

        token.setAuthenticated(true)
        return user

    }

    Collection<GrantedAuthority> getRoles(User user){
        return user.authorities.collect{ role ->
            new GrantedAuthorityImpl(role)
        }
    }

    User findUser(Long uid){
        return User.findByFacebookId(uid.toString())
    }

    Object getPrincipal(User user){
        return new GrailsUser(user.username, user.password, user.enabled,
                !user.accountExpired, !user.passwordExpired,
                !user.accountLocked, user.authorities?.collect {new SimpleGrantedAuthority(it)} ?: [GormUserDetailsService.NO_ROLE], user.id)
    }

    void updateToken(User user, FacebookAuthToken token) {
        if (token.accessToken == null) {
            log.error("No access token $token")
            return
        }
        if (token.accessToken.accessToken == null) {
            log.warn("Update to empty accessToken for user $user")
        }
        log.debug("Update access token to $token.accessToken for $user")
        User.withTransaction {
            try {
                if(token.accessToken.accessToken)
                    user.setAccessToken(token.accessToken.accessToken)
                if(token.accessToken.expireAt)
                    user.setAccessTokenExpires(token.accessToken.expireAt)

                user.save()
            } catch (OptimisticLockingFailureException e) {
                log.warn("Seems that token was updated in another thread (${e.message}). Skip")
            } catch (Throwable e) {
                log.error("Can't update token", e)
            }
        }
    }

}
