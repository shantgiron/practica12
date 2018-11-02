package practica12

class Contacto {

    String nombre;
    String apellido;
    String email;
    String telefono;
    String direccion
    String puestoTrabajo;
    String telefonoMovil;
    Categoria categoria;
    Date dateCreated
    Date lastUpdated

    static hasMany = [departamentos: Departamento]

    static constraints = {
        email unique: true;
        telefonoMovil unique: true;
    }
}
