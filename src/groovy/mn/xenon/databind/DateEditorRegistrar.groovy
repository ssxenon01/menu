package mn.xenon.databind

import org.springframework.beans.PropertyEditorRegistrar
import org.springframework.beans.PropertyEditorRegistry
import org.springframework.beans.propertyeditors.CustomDateEditor

import java.text.SimpleDateFormat

public class DateEditorRegistrar implements PropertyEditorRegistrar {

    public void registerCustomEditors(PropertyEditorRegistry registry) {

        registry.registerCustomEditor(Date, new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss"), true))
    }
}
