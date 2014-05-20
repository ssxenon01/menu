package mn.xenon

class MenuTagLib {

    static namespace = "menu"

    //static encodeAsForTags = [tagName: 'raw']

    def dependantJavascript = { attrs, body ->
        flash.dependantJavascript = body()
    }
    def renderDependantJavascript = {
        out << flash.dependantJavascript
    }

}
