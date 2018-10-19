package inmobiliaria

class Departamento extends Propiedad{

    Integer piso
    Integer numero
    Integer cantDormitorios
    Integer cantBaños
    String garage

    static constraints = {

      piso(blank: false, maxSize: 3, max:200)
      numero(blank: false, maxSize: 6)
      cantDormitorios(blank: false)
      cantBaños(blank: false)
      garage(blank: false, maxSize: 100)
    }
}
