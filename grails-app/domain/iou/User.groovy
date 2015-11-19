package iou

class User {

    String firstName
    String lastName
    String userName
    String password
    String email
    String phone
    Date token
    Double moneyOwed = 0
    Double moneyDue = 0
    Date dateCreated
    Date lastUpdated
    static hasMany = [friend : User, bill :Bill, group : Group]
    static constraints = {
        firstName(blank: false)
        lastName(blank: false)
        userName(blank: false,unique: true,size: 6..20)
        password(blank: false,size :6..20)
        email(email: true,unique: true)
        phone(blank: false)
        token(nullable: true)
    }
    static mapping = {
        friend lazy: false
        bill lazy: false
    }
}
