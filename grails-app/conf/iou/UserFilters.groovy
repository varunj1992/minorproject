package iou

class UserFilters {

    def filters = {
        userHome(controller:'user', action:'home') {
            before = {
                if(!session.user) {
                    redirect(controller: 'user', action: 'index')
                }
                return 0
            }
            after = { Map model ->

            }
            afterView = { Exception e ->

            }
        }
    }
}
