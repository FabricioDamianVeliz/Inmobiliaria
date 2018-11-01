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
        precio: 4500,
        rubro: 'alquiler',
        categoria:'Casa',
        cantDormitorio:3,
        cantBanios:2,
        estado:'Libre')

      casa2.save(flush:true)


      def usuario1 = new Usuario(nombreUsuario: "Fabricio" ,password: "12345",email: "fabricio@gmail.com")
      if(!usuario1.save(flush: true)) {
        usuario1.errors.each{
          println it
        }
      }

      def rol1 = new Rol(authority: "ADMINISTRADOR")
      if(!rol1.save(flush: true)) {
        rol1.errors.each{
          println it
        }
      }

      def usuarioRol1 = new UsuarioRol(usuario: usuario1, rol: rol1)
      if(!usuarioRol1.save(flush: true)) {
        usuarioRol1.errors.each{
          println it
        }
      }

      def usuario2 = new Usuario(nombreUsuario: "Esteban" ,password: "12345",email: "esteban@gmail.com")
      if(!usuario2.save(flush: true)) {
        usuario2.errors.each{
          println it
        }
      }

      def rol2 = new Rol(authority: "OPERADOR")
      if(!rol2.save(flush: true)) {
        rol2.errors.each{
          println it
        }
      }

      def usuarioRol2 = new UsuarioRol(usuario: usuario2, rol: rol2)
      if(!usuarioRol2.save(flush: true)) {
        usuarioRol2.errors.each{
          println it
        }
      }

    }
    def destroy = {
    }
}
