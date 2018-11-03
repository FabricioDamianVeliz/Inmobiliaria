package inmobiliaria

class Clientes extends Persona{

  Propiedad propiedad
  static hasMany=[comentarios:Comentario]
    static constraints = {

    propiedad(nullable:true)

    }
}
