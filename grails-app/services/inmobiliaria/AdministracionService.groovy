package inmobiliaria

import grails.gorm.transactions.Transactional

@Transactional
class AdministracionService {

      List listarVentas() {
            def ofertasVentas = Propiedad.findAll("from Propiedad as p where p.rubro=:venta", [venta: 'venta'])
            return ofertasVentas
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
