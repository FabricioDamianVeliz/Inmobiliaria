package inmobiliaria

class Administrador {
  String usuario
  String contraseña

    static constraints = {

    usuario (unique:true, blank :false, maxSize:50)
    contraseña(blank : false , maxSize : 10)


    usuario(blank: false, unique: true, maxSize: 30)
    contraseña(blank: false, maxSize: 30)


    }
}
