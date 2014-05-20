package auth

import mn.xenon.auth.Gender
import org.bson.types.ObjectId

class User implements Serializable{

	static mapWith = 'mongo'

    static expose = 'user'

	transient springSecurityService

	ObjectId id
	String username
	String password
	boolean enabled = true
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired

    String firstname
    String lastname
    Date birthDate
    Gender gender = Gender.Other
    /*facebook section*/
    String facebookId
    String accessToken
    Date accessTokenExpires

    static hasMany = [authorities:String]

	static embedded = ['authorities']

	static transients = ['springSecurityService']

	static constraints = {
		username blank: false, unique: true,email: true
		password blank: false
        facebookId nullable: true
        accessTokenExpires nullable: true
        accessToken nullable: true
        birthDate nullable: true
	}

	def beforeInsert() {
		encodePassword()
	}

	def beforeUpdate() {
		if (isDirty('password')) {
			encodePassword()
		}
	}

	protected void encodePassword() {
		password = springSecurityService.encodePassword(password)
	}
}
