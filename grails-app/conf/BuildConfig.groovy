grails.servlet.version = '3.0'
grails.project.work.dir = 'target'
grails.project.target.level = 1.6
grails.project.source.level = 1.6

grails.project.dependency.resolver = 'maven'
grails.project.dependency.resolution = {
	inherits 'global'
	log 'warn'
	checksums true
	legacyResolve false

	repositories {
		inherits true

		grailsPlugins()
		grailsHome()
		mavenLocal()
		grailsCentral()
		mavenCentral()
		mavenRepo 'http://repo.spring.io/milestone'
        mavenRepo "http://download.osgeo.org/webdav/geotools/"

    }

	dependencies {
        compile('javax.media:jai_codec:1.1.3')
        compile('javax.media:jai_core:1.1.3')
        compile('net.sf.ehcache:ehcache-core:2.6.8')
        compile 'org.springframework.social:spring-social-core:1.1.0.M4'
        compile 'org.springframework.social:spring-social-facebook:1.1.0.M4'
	}

	plugins {
		build ':tomcat:7.0.50.1'
		compile ':scaffolding:2.0.1'
		runtime ":resources:1.2.1"

        compile ":mongodb:2.0.1"
		compile ':spring-security-core:2.0-RC2'
        compile ':cache:1.1.1'
        compile ":mail:1.0.4"
        compile (":spring-security-facebook:0.15.2-CORE2"){
            exclude "spock-grails-support"
        }
	}
}
