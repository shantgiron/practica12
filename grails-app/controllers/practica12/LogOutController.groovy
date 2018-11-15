package practica12

class LogOutController {

    def index = {
        session.invalidate()

        redirect(controller: "index", action: "index")
    }
}

