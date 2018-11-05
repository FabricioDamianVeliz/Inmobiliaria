package inmobiliaria

class Vendedor extends Clientes{
String usuario
String contrasenia
String funcion='OPERADOR'


  static constraints = {

  usuario (unique:true, blank :false, maxSize:30)
  contrasenia(blank : false , maxSize : 10)

  }

}
