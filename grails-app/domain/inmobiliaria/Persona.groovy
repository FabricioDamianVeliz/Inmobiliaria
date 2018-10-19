package inmobiliaria

class Persona {

    String nombre
    String apellido
    Long dni
    String direccion
    String telefono
    String email

    static hasMany = [propiedad: Propiedad, quejas: Quejas]

    static constraints = {

        nombre(blank: false, maxSize: 100)
        apellido(blank: false, maxSize: 100)
        dni(blank: false, unique: true)
        telefono(blank:true,matches:"[0-9]{10}")
        email(blank:true,email:true, unique:true)
    }
}
