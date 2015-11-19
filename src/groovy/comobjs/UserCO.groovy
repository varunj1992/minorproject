package comobjs

import grails.validation.Validateable
import iou.User

/**
 * Created by varun on 8/11/15.
 */
@Validateable
class UserCO {
    String firstName
    String lastName
    String userName
    String password
    String confPassword
    String email
    String phone
    static constraints = {
        firstName(blank: false)
        lastName(blank: false)
        userName(blank: false,unique: true,size: 6..20)
        password(blank: false,size :6..20)
        confPassword(validator: {val,obj->
            if(val==obj.password)return true
            else return  false
        })
        email(email: true,unique: true)
        phone(blank: false)
    }
}
