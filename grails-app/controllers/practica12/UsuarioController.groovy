package practica12

import grails.plugin.springsecurity.annotation.Secured
import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

@Secured("ROLE_ADMIN")
class UsuarioController {

    UsuarioService usuarioService
    UsuarioRolService usuarioRolService
    RolService rolService
    def springSecurityService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    @Secured("ROLE_ADMIN")
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond usuarioService.list(params), model:[usuarioCount: usuarioService.count()]
    }

    @Secured("ROLE_ADMIN")
    def show(Long id) {
        respond usuarioService.get(id)
    }

    @Secured("ROLE_ADMIN")
    def create() {
        respond new Usuario(params)
    }

    @Secured("ROLE_ADMIN")
    def save(Usuario usuario) {
        if (usuario == null) {
            notFound()
            return
        }

        try {
            usuario.password = springSecurityService.encodePassword(usuario.password)
            usuarioService.save(usuario)
            UsuarioRol.create(usuario, rolService.get(1))
        } catch (ValidationException e) {
            respond usuario.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'usuario.label', default: 'Usuario'), usuario.id])
                redirect usuario
            }
            '*' { respond usuario, [status: CREATED] }
        }
    }

    @Secured("ROLE_ADMIN")
    def edit(Long id) {
        respond usuarioService.get(id)
    }

    @Secured("ROLE_ADMIN")
    def update(Usuario usuario) {
        if (usuario == null) {
            notFound()
            return
        }

        try {
            usuarioService.save(usuario)
        } catch (ValidationException e) {
            respond usuario.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'usuario.label', default: 'Usuario'), usuario.id])
                redirect usuario
            }
            '*'{ respond usuario, [status: OK] }
        }
    }

    @Secured("ROLE_ADMIN")
    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        usuarioService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'usuario.label', default: 'Usuario'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'usuario.label', default: 'Usuario'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
