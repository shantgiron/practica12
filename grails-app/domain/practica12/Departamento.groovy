package practica12

class Departamento {


    String nombre;
    Date dateCreated
    String createdBy
    Date lastUpdated
    String lastUpdatedBy

    static belongsTo = Contacto
    static hasMany=[contacto: Contacto]

    static constraints = {
        nombre unique: true
        createdBy nullable: true, display: false, editable: false
        lastUpdatedBy nullable: true, display: false, editable: false
        contacto editable: false, display:false
    }

    @Override
    String toString() {
        this.nombre
    }
}
