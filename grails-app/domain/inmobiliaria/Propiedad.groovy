package inmobiliaria

class Propiedad {

    String calle
    Integer numero
    String barrio
    String localidad
    String ciudad
    BigDecimal superficie
    BigDecimal precio

    static belongsTo = [persona: Persona]

    void tazarPrecio(){

    }

    static constraints = {

      calle(blank: false, maxSize: 100)
      numero(blank: false, maxSize: 6)
      barrio(blank: false, maxSize: 100)
      localidad(blank: false, maxSize: 100)
      ciudad(blank: false, maxSize: 100)
      superficie(blank: false)
      precio(blank: false)
    }
}
