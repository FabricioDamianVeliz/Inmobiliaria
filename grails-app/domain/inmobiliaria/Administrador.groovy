package inmobiliaria

class Administrador {
  String usuario
  String contraseña

    static constraints = {
<<<<<<< HEAD
    usuario (unique:true, blank :false, maxSize:50)
    contraseña(blank : false , maxSize : 10)

=======
    usuario(blank: false, unique: true, maxSize: 30)
    contraseña(blank: false, maxSize: 30)
    
>>>>>>> d5838d71557a4cfcdff7bf2bfab853a7234c2a39
    }
}
