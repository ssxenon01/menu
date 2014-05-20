package mn.xenon.json

import auth.User
import grails.converters.JSON
import grails.plugin.springsecurity.SpringSecurityUtils
import org.bson.types.ObjectId
import org.codehaus.groovy.grails.commons.DomainClassArtefactHandler
import org.codehaus.groovy.grails.commons.GrailsApplication
import org.codehaus.groovy.grails.commons.GrailsDomainClass
import org.codehaus.groovy.grails.web.converters.ConverterUtil
import org.codehaus.groovy.grails.web.converters.exceptions.ConverterException
import org.codehaus.groovy.grails.web.converters.marshaller.ObjectMarshaller
import org.codehaus.groovy.grails.web.json.JSONWriter
import org.springframework.beans.BeanUtils

/**
 * Created by IntelliJ IDEA.
 * User: xenon
 * Date: 2/18/12
 * Time: 2:24 PM
 * To change this template use File | Settings | File Templates.
 */
class CustomJSONMarshaller implements ObjectMarshaller<JSON> {

    static EXCLUDED = ['properties','metaClass','class','version','data','attached','errors','springSecurityService',
            'password','authorities','passwordExpired','histories','permissions','followers','accessToken','accessTokenExpires']

    private GrailsApplication application

    public JSONDomainMarshaller(GrailsApplication application) {
        this.application = application
    }

    public boolean supports(Object object) {
        return isDomainClass(object.getClass())
    }

    private getCustomApi(clazz) {
        def excludedFields = []
        def domainExcluded = clazz.declaredFields.name.contains('EXCLUDED') ? clazz.EXCLUDED : []
        def auths = SpringSecurityUtils.getPrincipalAuthorities()
        for (authority in auths) {
            def excluded = ExcludedFields.EXCLUDED[authority.authority]
            if (excluded) {
                excludedFields.addAll(excluded)
            }
        }
        excludedFields.addAll(domainExcluded)
        return excludedFields
    }

    public void marshalObject(Object o, JSON json) throws ConverterException {
        JSONWriter writer = json.getWriter()
        try {
            writer.object()
            def properties = BeanUtils.getPropertyDescriptors(o.getClass())
            def excludedFields = getCustomApi(o.class)
            for (property in properties) {
                String name = property.getName()
                if (!(EXCLUDED.contains(name) || excludedFields?.contains(name))) {
                    def readMethod = property.getReadMethod()
                    if (readMethod != null) {
                        def value = readMethod.invoke(o, (Object[]) null)
                        if (value instanceof List || value instanceof Set) {
                            writer.key(name)
                            writer.array()
                            value.each { item ->
                                if(item instanceof GrailsDomainClass) {
                                    json.convertAnother(item.id.toString())
                                } else if(item instanceof Enum){
                                    json.convertAnother(item.name())
                                } else{
                                    json.convertAnother(item)
                                }
                            }
                            writer.endArray()
                        } else if (isDomainClass(value.getClass())) {
                            if (name.equals('author') && value instanceof User){
                                writer.key(name)
                                json.convertAnother(value)
                            } else if(value instanceof User || value instanceof File){
                                writer.key(name)
                                json.convertAnother(value)
                            } else {
                                writer.key(name) 
                                json.convertAnother(value.id.toString())    
                            }
                        } else if (value instanceof ObjectId) {
                            writer.key(name)
                            json.convertAnother(value.toString())
                        } else if (value instanceof Enum) {
                            writer.key(name)
                            json.convertAnother(value.name())
                        } else if(value != null){
                            writer.key(name)
                            json.convertAnother(value)
                        }
                    }
                }
            }
            writer.endObject()
        } catch (Exception e) {
            throw new ConverterException("Exception in JSONDomainMarshaller", e)
        }
    }

    private boolean isDomainClass(Class clazz) {
        String name = ConverterUtil.trimProxySuffix(clazz.getName())
        return application.isArtefactOfType(DomainClassArtefactHandler.TYPE, name)
    }
}
