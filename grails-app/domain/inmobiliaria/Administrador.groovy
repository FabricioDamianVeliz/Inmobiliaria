package inmobiliaria

class Administrador {
  String usuario
  String contraseña

    static constraints = {
    usuario (unique:true)
    
    }
}
