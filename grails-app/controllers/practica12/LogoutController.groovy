package practica12

import grails.plugin.springsecurity.annotation.Secured

class LogoutController {


    def index() {
        session.invalidate()

        redirect(controller: "login", action: "auth")
    }
}
