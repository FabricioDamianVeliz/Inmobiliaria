package inmobiliaria

class Comprador extends Clientes{

    static constraints = {
    }

    String toString (){
    return  "Nombre: " + nombre +" "+apellido +" - Dni: "+ dni
    }
}
