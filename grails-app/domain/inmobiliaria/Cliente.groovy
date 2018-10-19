package inmobiliaria

class Cliente extends Persona{
    BigInteger numTarjeta
    String  formaDePago
    void realizarQueja(){

    }

    static constraints = {
    /*formaDePago (blank :false, inList:['efectivo','tarjeta'], validator :{val, obj ->
      if(val='tarjeta')
      obj.numTarjeta (blank :false)
    })*/

    }
}
