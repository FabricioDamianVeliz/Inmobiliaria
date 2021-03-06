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
    byte[] imagen

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
  imagen(nullable: true, maxSize: 1024 * 1024 * 2)
}

String toString (){
    return  "Calle: " + this.calle + "- Numero: "+ this.numero +"- Tipo Propiedad: " + this.categoria +"-  Tipo operacion: "+ this.rubro +"-  Estado: "+ this.estado  }

    static mapping = {
        imagen column: 'featured_image_bytes', sqlType: 'bytea'
    }

}
