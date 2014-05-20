package mn.xenon.exceptions

import org.codehaus.groovy.grails.commons.ApplicationHolder as AH
import org.springframework.context.i18n.LocaleContextHolder as LCH

class InstanceNotFoundException extends RuntimeException {

	String message

    def InstanceNotFoundException(def args) {
        message = getExceptionMessage('pin.instance.not.found',args)
    }

    static getExceptionMessage(String code, def args){
        def ms =AH.application.mainContext.messageSource
        return ms.getMessage(code, args.toArray(), LCH.getLocale())
    }
}
