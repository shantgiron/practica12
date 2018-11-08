package practica12

class BootStrap {

    def springSecurityService

    def init = { servletContext ->
        Usuario admin = new Usuario(
                username: "admin",
                password: "admin"
        ).save(failOnError: true)

        def rolAdmin = new Rol(authority: "ROLE_ADMIN").save(failOnError: true)
        def rolUsuario = new Rol(authority: "ROLE_USUARIO").save(failOnError: true)

        UsuarioRol.create(admin, rolAdmin)
        UsuarioRol.create(admin, rolUsuario)
    }

    def destroy = {
    }
}
