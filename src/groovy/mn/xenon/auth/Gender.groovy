package mn.xenon.auth

/**
 * Created with IntelliJ IDEA.
 * User: jpori
 * Date: 12/14/12
 * Time: 9:29 PM
 * To change this template use File | Settings | File Templates.
 */
public enum Gender {

    Male,
    Female,
    Other

    def static strToEnum(String val) {
        if(['male','эр','эрэгтэй'].contains(val?.toLowerCase())) {
            return Male
        } else if(['female','эм','эмэгтэй'].contains(val?.toLowerCase())) {
            return Female
        } else {
            return Other
        }
    }

    static list(){
        [Other,Male,Female]
    }
}