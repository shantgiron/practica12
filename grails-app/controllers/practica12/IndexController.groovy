package practica12

import grails.plugin.springsecurity.annotation.Secured
import grails.validation.ValidationException

import static org.springframework.http.HttpStatus.*

class IndexController {

    def index() {
        def departamentos = Departamento.list()
        def categorias = Categoria.list()

        def arreglo = []
        def arreglo2 = []

        departamentos.each { it ->
            def x =  it.contacto.size()
            arreglo << x
        }

        categorias.each { it ->
            def x = it.contacto.size()
            arreglo2 << x
        }

        [departamentos: departamentos, cantContactos: arreglo, cantContactos2: arreglo2,  categorias: categorias]
    }
}
