package inmobiliaria

class Consulta {
  String nombre
  String apellido
  Integer telefono
  String email
  String comentario
  String estado="no leido"


    static constraints = {
      nombre (blank:false, maxSize:50)
      apellido (blank:false, maxSize:50)
      telefono (blank:false)
      email (blank:false , email:true)
      comentario (blank:true, maxSize:500)
      estado (blank: false, maxSize: 15, inList:['Leido','No Leido'])
    }
}
