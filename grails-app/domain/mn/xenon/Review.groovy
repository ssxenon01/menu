package mn.xenon

import auth.User
import org.bson.types.ObjectId

class Review {
    static mapWith = "mongo"
    ObjectId id

    User author

    String message
    Integer rating = 0
    Tenant tenant

    static constraints = {

        author          nullable: true
        message         nullable: true

    }
}
