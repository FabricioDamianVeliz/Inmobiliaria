package inmobiliaria

class Alquiler {
Collection propiedadAlquiler
static hasMany = [propiedadAlquiler : Propiedad]

    static constraints = {
    }
}
