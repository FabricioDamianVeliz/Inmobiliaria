package inmobiliaria

class Venta {
    Collection propiedadVenta
    static hasMany = [propiedadVenta : Propiedad]


    static constraints = {
    }
}
