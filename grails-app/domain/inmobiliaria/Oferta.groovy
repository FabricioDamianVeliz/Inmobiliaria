package inmobiliaria

class Oferta {

Collection propiedadOferta
static hasMany = [propiedadOferta : Propiedad]


    static constraints = {
    }
}
