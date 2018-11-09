package inmobiliaria

import grails.gorm.transactions.Transactional

@Transactional
class AdministracionService {

      List listarVentas() {
            def ofertasVentas = Propiedad.findAll("from Propiedad as p where p.rubro=:venta and p.estado=:estado", [venta: 'Venta', estado: 'Disponible'])
            return ofertasVentas
            }

      List listarAlquiler() {
            def ofertasAlquiler = Propiedad.findAll("from Propiedad as p where p.rubro=:alquiler and p.estado=:estado", [alquiler: 'Alquiler', estado: 'Disponible'])
            return ofertasAlquiler
            }

      List listarOfertas() {
            def ofertas = Propiedad.findAll("from Propiedad as p where (p.precio<=:precioVenta and p.rubro=:venta and p.estado=:estado) or (p.precio<=:precioAlquiler and p.rubro=:alquiler and p.estado=:estado) ", [precioVenta: 1000000.00, venta: 'Venta', estado: 'Disponible', precioAlquiler: 3000.00, alquiler: 'Alquiler'])
            return ofertas
            }


      List listarVentasbuscador(String rubro, String localidad, String barrio) {
            def listadoventasbuscador = Propiedad.findAll("from Propiedad as p where (p.rubro=:rubros and p.localidad=:localidades and p.barrio=:barrios)", [rubros: rubro, localidades: localidad, barrios: barrio])
            return listadoventasbuscador
            }

      List listarConsultas() {
            def listado = Consulta.findAll("from Consulta as c where c.estado=:estado", [estado: 'No Leido'])
            return listado
            }

      void altaConsulta(Map params) {
            def consulta = new Consulta(params)
            consulta.setEstado("No Leido")
            consulta.save(flush:true)
            }

      void quitarConsulta(Long id){
            def consulta = Consulta.get(id)
            consulta.estado = 'Leido'
            consulta.save(flush: true)
      }

      void quitarPropiedad(Long id){
            def propiedad = Propiedad.get(id)
            propiedad.estado = 'No Disponible'
            propiedad.save(flush: true)
            }          

}
