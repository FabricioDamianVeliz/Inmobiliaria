package inmobiliaria

class Vendedor extends Clientes{
/*String usuario
String contrasenia
String funcion='OPERADOR'*/

static hasMany = [propiedad: Propiedad] 


  static constraints = {

  /*usuario(unique:true, blank :false, maxSize:30)
  contrasenia(blank : false , maxSize : 10)*/

  }

  String toString (){
    return  "Nombre: " + nombre +" "+ apellido +" - Dni: "+ dni
    }

}
