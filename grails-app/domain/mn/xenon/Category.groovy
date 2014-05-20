package mn.xenon

import auth.User
import org.bson.types.ObjectId

class Category implements Serializable{
    static mapWith = "mongo"
    ObjectId id

    String name
    String desription
    String suffix

    Category parent


    Date dateCreated = new Date()
    Date lastUpdated

    String mapIcon

    User author

    static constraints = {

        parent nullable: true
        lastUpdated nullable: true
        desription nullable: true
        mapIcon nullable:true
        author nullable: true
    }
}
