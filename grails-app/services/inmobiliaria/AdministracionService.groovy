package inmobiliaria

import grails.gorm.transactions.Transactional

@Transactional
class AdministracionService {

      List listarofertasventas() {
            def ofertasventas = Propiedad.findAll("from propiedad as p where p.rubro=:venta", [venta: 'venta'])
            println ofertasventas
            return ofertasventas

            }

      List listarofertasalquiler() {
            def ofertasalquiler = Propedad.findAll("from propiedad as p where p.rubro=: alquiler", [alquiler: 'alquiler'])
            return ofertasalquiler
            }
}
