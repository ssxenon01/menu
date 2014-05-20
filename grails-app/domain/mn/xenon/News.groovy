package mn.xenon

import auth.User
import org.bson.types.ObjectId

class News {

    static mapWith = "mongo"
    ObjectId id

    String name
    String description
    String profileImage
    String pageImage

    List<String> gallery

    Date dateCreated = new Date()
    User author

    static constraints = {

        profileImage nullable: true
        pageImage nullable: true

    }

}
