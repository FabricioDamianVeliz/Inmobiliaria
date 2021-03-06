package inmobiliaria

class Consulta {
  String nombre
  String apellido
  Integer telefono
  String email
  String comentario
  String estado
  //Propiedad propiedad


    Consulta (String nombre, String apellido, Integer telefono, String email, String comentario/*,Propiedad propiedad*/) {
      this.nombre=nombre
      this.apellido=apellido
      this.telefono=telefono
      this.email=email
      this.comentario=comentario
      this.estado='No Leido'
      //this.propiedad=propiedad
    }


    static constraints = {
      nombre (blank:false, maxSize:50)
      apellido (blank:false, maxSize:50)
      telefono (blank:false)
      email (blank:false , email:true)
      comentario (blank:true, maxSize:500)
      comentario (blank:true, maxSize:500)
      estado (blank: true, nullable:true, inList:['Leido','No Leido'])

    }
}
