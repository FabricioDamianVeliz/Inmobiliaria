package inmobiliaria

import grails.gorm.transactions.Transactional

@Transactional
class AdministracionService {

<<<<<<< HEAD
    List listarConsultas() {
    def listado = Consulta.findAll()
    return listado
    }



      void altaConsulta(Map params) {

            def consulta = new Consulta(params)
            consulta.setEstado("No Leido")
            consulta.save(flush:true)

      }

=======
>>>>>>> 73a159cac8cc7d633808416cd4ff7d43f1d4f4fc
      List listarVentas() {
            def ofertasVentas = Propiedad.findAll("from Propiedad as p where p.rubro=:venta", [venta: 'Venta'])
            return ofertasVentas
            }

      List listarAlquiler() {
            def ofertasAlquiler = Propiedad.findAll("from Propiedad as p where p.rubro=:alquiler", [alquiler: 'Alquiler'])
            return ofertasAlquiler
            }   

      List listarOfertas() {
            def ofertas = Propiedad.findAll("from Propiedad as p where (p.precio<=:precioVenta and p.rubro=:venta and p.estado=:estado) or (p.precio<=:precioAlquiler and p.rubro=:alquiler and p.estado=:estado) ", [precioVenta: 90000.00, venta: 'Venta', estado: 'Libre', precioAlquiler: 50000.00, alquiler: 'Alquiler'])
            return ofertas
            }

}
