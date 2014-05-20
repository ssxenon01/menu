package mn.xenon.json;

import java.beans.PropertyEditorSupport;

public class ValueToDomainInstanceEditor extends PropertyEditorSupport {
    private final Class domainClass
    
    public ValueToDomainInstanceEditor(Class domainClass) {
        this.domainClass = domainClass
    }

    public String getAsText() {
        return value?.id
    }

    public void setAsText(String text) {
        def val = domainClass.get(text)
        if(val){
            super.setValue(val)
        }
        else{
            //super.setValue(text)
        }
    }
}
