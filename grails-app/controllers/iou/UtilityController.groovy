package iou

class UtilityController {

    def index() {}
    def addFriend() {
        User user = User.findByEmail(params.email)
        if(user!=null)
        {
            user.addToFriend(session.user)
            session.user.addToFriend(user)
            user.save(flush: true,failOnError: true)
            session.user.save(flush: true,failOnError: true)
        }
        else
        {
            flash.message="Sorry, couldn't find your friend"
        }
        redirect(controller: 'user', action: 'home')
    }
}
