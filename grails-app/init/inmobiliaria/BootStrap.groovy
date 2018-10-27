package inmobiliaria

class BootStrap {

    def init = { servletContext ->

    def casa1= new Propiedad( calle:'Belgrano',
      numero: 125,
      barrio:'Centro',
      localidad:'Capital',
      ciudad: 'San Fernando del Valle de Catamarca',
      superficie: 64,
      precio: 1000000,
      rubro: 'venta',
      categoria:'Casa',
      cantDormitorio:2,
      cantBanios:1,
      estado:'Libre')
      casa1.save(flush:true)



     def casa2= new Propiedad( calle:'Salta',
        numero: 15,
        barrio:'Centro',
        localidad:'Capital',
        ciudad: 'San Fernando del Valle de Catamarca',
        superficie: 100,
        precio: 1520000,
        rubro: 'alquiler',
        categoria:'Casa',
        cantDormitorio:3,
        cantBanios:2,
        estado:'Libre')

      casa2.save(flush:true)


      def administrador = new Usuario (usuario: 'admin', contrasenia:'admin')
      administrador.save(flush:true)

    }
    def destroy = {
    }
}
