package inmobiliaria

class Quejas {

    Date fecha
    String preguntas
    Integer orden

    void buscar(){

    }

    static belongsTo = [persona: Persona]

    static constraints = {

      fecha(blank: false, min: new Date())
      preguntas(blank: false, maxSize: 500)
      orden(blank: false, maxSize: 6)
    }
}
