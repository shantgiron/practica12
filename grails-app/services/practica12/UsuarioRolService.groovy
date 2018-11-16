package practica12

import grails.gorm.services.Service

@Service(UsuarioRol)
interface UsuarioRolService {

    UsuarioRol get(Serializable id)

    List<UsuarioRol> list(Map args)

    Long count()

    void delete(Serializable id)

    UsuarioRol save(UsuarioRol usuarioRol)

}