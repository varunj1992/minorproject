package iou
import comobjs.UserCO
class UserController {
IouMailService IouMailService
    def index() { }
    def auth() {
        User user = User.findByUserNameAndPassword(params.userName,params.password)
        if(user!=null)
        {
            session.user = user
            redirect(action: 'home')
        }
        else
        {
            flash.message = "false"
            redirect(action: 'index')
        }
    }
    def home() {
        List<User> friend = session.user.friend.toList()
        [friends : friend]
    }
    def logout() {
        if(session.user)
            session.invalidate()
        redirect(action: 'index')
    }
    def register() { }
    def newUser(UserCO userCO) {
        if (userCO.hasErrors()) {
            flash.message = "false"
            redirect(action: 'register')
        }
        else {
            User user = new User()
            bindData(user, userCO.getProperties(), [excludes: ['confPassword']])
            user.save(flush: true, failOnError: true)
            flash.message = "true"
            redirect(action: 'index')
        }
    }
    def forgotPassword() {
        User user=User.findByUserName(params.userName)
        if(user){
            IouMailService.changePassword(user)
            flash.message="Check your mail"
            redirect(action: 'index')
        }
        else{
            flash.message="No such username found"
            redirect(action: 'index')
        }
    }
    def newPassword(){
        if(!session.user){
            ResetPassword resetPassword=ResetPassword.findByAccessToken(params.token)
        }
        if(!session.user && resetPassword){
            session.user=resetPassword
        }
        else if(!resetPassword){
            flash.message="Token Expired"
            redirect(action: "login")
        }

    }
}

