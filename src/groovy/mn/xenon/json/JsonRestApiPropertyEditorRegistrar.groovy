package mn.xenon.json;

import org.codehaus.groovy.grails.commons.GrailsApplication
import org.springframework.beans.PropertyEditorRegistrar
import org.springframework.beans.PropertyEditorRegistry

public class JsonRestApiPropertyEditorRegistrar implements PropertyEditorRegistrar {
    private final GrailsApplication application

    public JsonRestApiPropertyEditorRegistrar(GrailsApplication application) {
        this.application = application
    }

    public void registerCustomEditors(PropertyEditorRegistry reg) {
        application.domainClasses.each{ domainClass->
            Class clazz = application.getClassForName(domainClass.fullName)
            reg.registerCustomEditor(clazz, new ValueToDomainInstanceEditor(clazz));
        }
    }
}
