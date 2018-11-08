package practica12

class Contacto {

    String nombre
    String apellido
    String email
    String telefono
    String direccion
    String puestoTrabajo
    String telefonoMovil
    Categoria categoria
    Usuario usuario;
    Date dateCreated
    Date lastUpdated
    String createdBy
    String lastUpdatedBy


    static hasMany = [departamentos: Departamento]

    static constraints = {
        nombre nullable: false
        apellido nullable: false
        email unique: true
        telefono unique: true
        direccion nullable: true
        puestoTrabajo nullable: false
        categoria nullable: false
        usuario nullable: true
        telefonoMovil unique: true
        createdBy nullable: true, display: false, editable: false
        lastUpdatedBy nullable: true, display: false, editable: false
    }

    @Override
    String toString() {
        this.nombre + " " + this.apellido
    }
}
