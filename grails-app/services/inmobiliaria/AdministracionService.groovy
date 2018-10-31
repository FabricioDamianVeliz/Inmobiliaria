package inmobiliaria

import grails.gorm.transactions.Transactional

@Transactional
class AdministracionService {

      List listarVentas() {
            def ventas = Propiedad.findAll()
            return ventas
            }

}
