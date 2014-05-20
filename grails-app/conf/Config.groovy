/*grails.config.locations = [
	"classpath:${appName}-config.groovy",
	"file:./${appName}-config.groovy"]

if (System.properties["${appName}.config.location"]) {
	grails.config.locations << "file:" + System.properties["${appName}.config.location"]
}*/

grails.controllers.defaultScope = 'singleton'
grails.converters.encoding = "UTF-8"
grails.enable.native2ascii = true
grails.exceptionresolver.params.exclude = ['password']
grails.hibernate.cache.queries = false
grails.json.legacy.builder = false
// The ACCEPT header will not be used for content negotiation for user agents containing the following strings (defaults to the 4 major rendering engines)
grails.mime.disable.accept.header.userAgents = ['Gecko', 'WebKit', 'Presto', 'Trident']
grails.mime.types = [
	all:            '*/*',
	atom:           'application/atom+xml',
	css:            'text/css',
	csv:            'text/csv',
	form:           'application/x-www-form-urlencoded',
	html:          ['text/html','application/xhtml+xml'],
	js:             'text/javascript',
	json:          ['application/json', 'text/json'],
	multipartForm:  'multipart/form-data',
	rss:            'application/rss+xml',
	text:           'text/plain',
	hal:           ['application/hal+json','application/hal+xml'],
	xml:           ['text/xml', 'application/xml']
]
grails.project.groupId = appName
grails.resources.adhoc.patterns = ['/images/*', '/css/*', '/js/*', '/plugins/*']
grails.scaffolding.templates.domainSuffix = 'Instance'
grails.spring.bean.packages = []
grails.views.default.codec = "html"
grails.web.disable.multipart=false

// GSP settings
grails {
	views {
		gsp {
			encoding = 'UTF-8'
			htmlcodec = 'xml' // use xml escaping instead of HTML4 escaping
			codecs {
				expression = 'html' // escapes values inside ${}
				scriptlet = 'html' // escapes output from scriptlets in GSPs
				taglib = 'none' // escapes output from taglibs
				staticparts = 'none' // escapes output from static template parts
			}
		}
		// escapes all not-encoded output at final stage of outputting
		filteringCodecForContentType {
			//'text/html' = 'html'
		}
	}
}

environments {
	development {
		grails.logging.jul.usebridge = true
        log4j = {
            debug  'mn.xenon'
            debug 'grails.app.jobs'
        }
	}
	production {
        grails.serverURL = "http://menu.mn"
        grails.config.locations = ["file:/opt/tomcat/menu_config.properties"]
        grails.mail.default.from = "noreply@menu.mn"
		grails.logging.jul.usebridge = false
	}
}

log4j = {
	error 'org.codehaus.groovy.grails',
	      'org.springframework',
	      'org.hibernate',
	      'net.sf.ehcache.hibernate'
}

grails.plugin.springsecurity.rejectIfNoRule = false
grails.plugin.springsecurity.fii.rejectPublicInvocations = false
grails.plugin.springsecurity.securityConfigType = "Annotation"
grails.plugin.springsecurity.useSessionFixationPrevention = false
grails.plugin.springsecurity.sessionFixationPrevention.alwaysCreateSession = true
grails.plugin.springsecurity.logout.postOnly = false
grails.plugin.springsecurity.controllerAnnotations.staticRules = [
	'/':                ['permitAll'],
    '/login':           ['permitAll'],
    '/j_spring_security_facebook_redirect':           ['permitAll'],
    '/j_spring_security_facebook_check':           ['permitAll'],
    '/logout':          ['permitAll'],
	'/index':           ['permitAll'],
	'/index.gsp':       ['permitAll'],
	'/**/js/**':        ['permitAll'],
	'/**/css/**':       ['permitAll'],
	'/**/images/**':    ['permitAll'],
	'/**/favicon.ico':  ['permitAll']
]


grails.plugin.springsecurity.userLookup.userDomainClassName = 'auth.User'
grails.plugin.springsecurity.facebook.domain.classname='auth.User'
grails.plugin.springsecurity.facebook.appId='629850093771846'
grails.plugin.springsecurity.facebook.secret='3d5876118f7c409eaa314af9d081328e'
grails.plugin.springsecurity.facebook.permissions='email,user_about_me,user_birthday,user_location'
