package inmobiliaria

class Vendedor extends Clientes{

static hasMany = [vendidas:Propiedad]

  static constraints = {

  usuario (unique:true, blank :false, maxSize:30)
  contrasenia(blank : false , maxSize : 10)
  vendidas (nullable:true)
  }

}
