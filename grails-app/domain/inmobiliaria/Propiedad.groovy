package inmobiliaria

class Propiedad {

    String calle
    Integer numero
    String barrio
    String localidad
    String ciudad
    BigDecimal superficie
    BigDecimal precio
    String rubro
    String rubroLocal
    Integer cantBanios
    Integer cantDormitorio
    Integer piso
    Integer nDepartamento
    String categoria
    String estado

static belongsTo = [vendedor: Vendedor]

    static constraints = {

  calle(blank: false, maxSize: 100)
  numero(blank: false, maxSize: 6)
  barrio(blank: false, maxSize: 100)
  localidad(blank: false, maxSize: 100)
  ciudad(blank: false, maxSize: 100)
  superficie(blank: false)
  precio(blank: false)
  rubro(blank: false, maxSize: 100, inList:['Alquiler','Venta'])
  rubroLocal (nullable:true, maxSize:20)
  cantBanios(blank:false)
  cantDormitorio(nullable:true, blank:true)
  piso(nullable:true, blank:true, max:30)
  nDepartamento(nullable:true, blank:true, max:200 )
  categoria (blank: false, maxSize: 20, inList:['Casa','Departamento', 'Oficina', 'Local'])
  estado (blank: false, maxSize: 15, inList:['Disponible', 'No Disponible'])
}

String toString (){
<<<<<<< HEAD
    return  "Calle: " + this.calle + "- Numero: "+ this.numero +"- Tipo Propiedad: " + this.categoria +"-  Tipo operacion: "+ this.rubro   }
=======
    return  "Calle: " + this.calle + "- Numero: "+ this.numero +"- Tipo Propiedad: " + this.categoria +"-  Tipo operacion: "+ this.rubro +"- Estado: " + this.estado
  }
>>>>>>> 24e12028963efb1b0f3a964e49d0b327040f43c6

}
