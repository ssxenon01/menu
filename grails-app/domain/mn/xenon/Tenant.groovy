package mn.xenon

import auth.User
import org.bson.types.ObjectId

class Tenant implements Serializable{

    static mapWith = "mongo"
    static expose = 'tenant'


    User author
    User manager

    ObjectId id
    String name
    String description
    List reviewList = []
    List checkInList = []
    Integer reviewCount = 0
    Integer checkInCount = 0
    Map location
    String locationStr // circus, square etc

    String address
    String phone
    String mobile
    List adminList = []

    Boolean disabled = false
    Boolean draft = false

    Category category

    List galleryList = []

    Date dateCreated = new Date()

    Boolean featured = false
    Date featuredUntil



    /*Social accounts*/

    String facebookUrl
    String twitterId
    String googlePlusId
    String linkedIn
    String youtube
    String instagram
    String pinterest
    String flickr
    String website
    String email


    /*Features*/

    Boolean outdoors                    = false
    Boolean withGreatView               = false
    Boolean oldSchool                   = false
    Boolean amongstStrippers            = false
    Boolean vintage                     = false
    Boolean rockClub                    = false
    Boolean jazzClub                    = false
    Boolean goodDj                      = false
    Boolean lounge                      = false
    Boolean irishPub                    = false
    Boolean sportBar                    = false
    Boolean romantic                    = false
    Boolean hipster                     = false
    Boolean wineBar                     = false
    Boolean happyHour                   = false
    Boolean aroundBeautifulPeople       = false
    Boolean somewhereQuick              = false
    Boolean somePlaceHealthy            = false
    Boolean vegetarian                  = false
    Boolean HipHop                      = false
    Boolean wifi                        = false
    Boolean smokingRoom                 = false
    Boolean lowBrow                     = false
    Boolean cocktails                   = false
    Boolean hotspot                     = false
    Boolean discreet                    = false
    Boolean crowded                     = false
    Boolean hangover                    = false
    Boolean celebration                 = false
    Boolean oldPeople                   = false
    Boolean party                       = false
    Boolean pizza                       = false
    Boolean beer                        = false
    Boolean steak                       = false
    Boolean cheap                       = false
    Boolean bbq                         = false
    Boolean goodForKids                 = false
    Boolean goodForGroups               = false
    Boolean vipRoom                     = false
    Boolean openPastMidnight            = false
    Boolean toTalkBusiness              = false
    Boolean withSexyPeople              = false
    Boolean withFireplace               = false
    Boolean reservation                 = false
    Boolean reservationPhone
    Boolean delivery                    = false
    Boolean takeOut                     = false
    Boolean creditCard                  = false
    Boolean parking                     = false
    Boolean tv                          = false
    Boolean waiterService               = false


    static constraints = {
        author nullable: true
        manager nullable: true
        reviewList(nullable: true)
        checkInList(nullable: true)
        galleryList(nullable: true)
        description(nullable: true)
        reviewCount(nullable: true)
        checkInCount(nullable: true)
        location(nullable: true)
        address(nullable: true)
        phone(nullable: true)
        category(nullable: true)
        website(nullable: true)
        adminList(nullable: true)
        featured nullable: true
        featuredUntil nullable: true
        locationStr nullable: true
        reservationPhone nullable: true
    }
}
