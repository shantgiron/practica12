package practica12

import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString
import grails.compiler.GrailsCompileStatic

@GrailsCompileStatic
@EqualsAndHashCode(includes = 'username')
@ToString(includes = 'username', includeNames = true, includePackage = false)
class Usuario implements Serializable {
    private static final long serialVersionUID = 1

    String username
    String password
    boolean enabled = true
    boolean accountExpired
    boolean accountLocked
    boolean passwordExpired

    Date dateCreated
    String createdBy
    Date lastUpdated
    String lastUpdatedBy

    Set<Rol> getAuthorities() {
        (UsuarioRol.findAllByUsuario(this) as List<UsuarioRol>)*.rol as Set<Rol>
    }

    static constraints = {
        username nullable: false, blank: false, unique: true
        password nullable: false, blank: false, password: true
        createdBy nullable: true, display: false, editable: false
        lastUpdatedBy nullable: true, display: false, editable: false
        enabled display: false, editable: false
        accountExpired display: false, editable: false
        accountLocked display: false, editable: false
        passwordExpired display: false, editable: false
    }

    static mapping = {
        password column: '`password`'
    }

    @Override
    String toString() {
        this.username
    }
}