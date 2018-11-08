package practica12

class Categoria {

    String nombre;

    Date dateCreated
    Date lastUpdated
    String createdBy
    String lastUpdatedBy

    static hasMany=[contacto: Contacto]

    static constraints = {
        nombre unique: true
        createdBy nullable: true, display: false, editable: false
        lastUpdatedBy nullable: true, display: false, editable: false
    }

    @Override
    String toString() {
        this.nombre
    }
}
