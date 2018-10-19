package inmobiliaria

class Operador extends Usuario{
    String usuario
    String contraseña

    static constraints = {
        usuario(blank: false, unique: true, maxSize: 30)
        contraseña(blank: false, maxSize: 30)
    }
}
