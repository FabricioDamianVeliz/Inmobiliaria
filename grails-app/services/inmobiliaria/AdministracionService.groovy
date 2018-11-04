package inmobiliaria

import grails.gorm.transactions.Transactional

@Transactional
class AdministracionService {


      List listarConsultas() {
        def listado = Consulta.findAll()
        return listado
        }



          void altaConsulta(Map params) {

                def consulta = new Consulta().save(flush:true)


          }

      List listarVentas() {
            def ofertasVentas = Propiedad.findAll("from Propiedad as p where p.rubro=:venta", [venta: 'venta'])
            return ofertasVentas
            }



            List listarVentas1(String rubro, String localidad, String barrio) {
                  def ofertasVentas1 = Propiedad.findAll("from Propiedad as p where (p.rubro=:rubros or p.localidad=:localidades or p.barrio=:barrios)", [rubros: rubro, localidades: localidad, barrios: barrio])
                  return ofertasVentas1
                  }


      List listarAlquiler() {
            def ofertasAlquiler = Propiedad.findAll("from Propiedad as p where p.rubro=:alquiler", [alquiler: 'alquiler'])
            return ofertasAlquiler
            }

      List listarOfertas() {
            def ofertas = Propiedad.findAll("from Propiedad as p where (p.precio<=:precioVenta and p.rubro=:venta and p.estado=:estado) or (p.precio<=:precioAlquiler and p.rubro=:alquiler and p.estado=:estado) ", [precioVenta: 90000.00, venta: 'venta', estado: 'Libre', precioAlquiler: 50000.00, alquiler: 'alquiler'])
            return ofertas
            }

}
