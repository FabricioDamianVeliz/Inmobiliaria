package inmobiliaria

class Vendedor extends Clientes{
String usuario
String contrasenia
String funcion='opera'
static hasMany = [vendidas:Propiedad]

  static constraints = {

  usuario (unique:true, blank :false, maxSize:30)
  contrasenia(blank : false , maxSize : 10)
  vendidas (nullable:true)
  }

}
