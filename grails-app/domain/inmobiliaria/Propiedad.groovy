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

      static constraints = {

      calle(blank: false, maxSize: 100)
      numero(blank: false, maxSize: 6)
      barrio(blank: false, maxSize: 100)
      localidad(blank: false, maxSize: 100)
      ciudad(blank: false, maxSize: 100)
      superficie(blank: false)
      precio(blank: false)
      rubro(blank: false, maxSize: 100, inList:['alquiler','venta'])
      rubroLocal (blank:true, maxSize:20)
      cantBanios(blank:false)
      cantDormitorio(blank:true)
      piso(blank:true, max:30)
      nDepartamento(blank:true, max:200 )
      categoria (blank: false, maxSize: 20, inList:['Casa','Departamento', 'Oficina', 'Local'])
      estado (blank: false, maxSize: 15, inList:['Vendida', 'Alquilada', 'Libre'])
    }
}
