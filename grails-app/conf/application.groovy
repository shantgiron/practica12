grails.plugin.springsecurity.password.algorithm = 'bcrypt'

// Added by the Spring Security Core plugin:
grails.plugin.springsecurity.userLookup.userDomainClassName = 'practica12.Usuario'
grails.plugin.springsecurity.userLookup.authorityJoinClassName = 'practica12.UsuarioRol'
grails.plugin.springsecurity.authority.className = 'practica12.Rol'
grails.plugin.springsecurity.controllerAnnotations.staticRules = [
        [pattern: '/', access: ['permitAll']],
        [pattern: '/error', access: ['permitAll']],
        [pattern: '/index', access: ['permitAll']],
        [pattern: '/index.gsp', access: ['permitAll']],
        [pattern: '/shutdown', access: ['permitAll']],
        [pattern: '/assets/**', access: ['permitAll']],
        [pattern: '/**/js/**', access: ['permitAll']],
        [pattern: '/**/css/**', access: ['permitAll']],
        [pattern: '/**/images/**', access: ['permitAll']],
        [pattern: '/**/favicon.ico', access: ['permitAll']],
        [pattern: '/dbconsole/**', access: ['permitAll']],
        [pattern: '/departamento/**', access: ['permitAll']],
        [pattern: '/usuario/**', access: ['permitAll']],
        [pattern: '/categoria/**', access: ['permitAll']],
        [pattern: '/contacto/**', access: ['permitAll']],
        [pattern: '/inicio/**', access: ['permitAll']]
]

grails.plugin.springsecurity.filterChain.chainMap = [
        [pattern: '/assets/**', filters: 'none'],
        [pattern: '/**/js/**', filters: 'none'],
        [pattern: '/**/css/**', filters: 'none'],
        [pattern: '/**/images/**', filters: 'none'],
        [pattern: '/**/favicon.ico', filters: 'none'],
        [pattern: '/**', filters: 'JOINED_FILTERS']
]

grails.plugin.springsecurity.useSecurityEventListener = true
grails.plugin.springsecurity.onAbstractAuthenticationFailureEvent = { e, appCtx ->
    println "\nERROR auth failed for user $e.authentication.name: $e.exception.message\n"
}
