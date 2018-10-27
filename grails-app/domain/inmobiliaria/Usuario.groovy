package inmobiliaria

class Usuario {
  String usuario
  String contrasenia
  String funcion='admin'

    static constraints = {

    usuario (unique:true, blank :false, maxSize:30)
    contrasenia(blank : false , maxSize : 10)

    }
}
