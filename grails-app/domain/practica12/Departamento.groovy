package practica12

class Departamento {


    String nombre;
    Date dateCreated
    Date lastUpdated


    static constraints = {
        nombre unique: true
    }
}
