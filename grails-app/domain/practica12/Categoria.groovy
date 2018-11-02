package practica12

class Categoria {

    String nombre;

    Date dateCreated
    Date lastUpdated

    static constraints = {
        nombre unique: true
    }
}
