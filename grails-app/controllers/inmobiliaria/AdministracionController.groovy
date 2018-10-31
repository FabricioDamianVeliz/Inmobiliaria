package inmobiliaria

class AdministracionController {
    def administracionService

    def index() {
     render(view:"principal")
     }

     def ventanaAdministrador() {
      render(view:"administrador")
      }


     def principal(){
        // [listado: administracionService.listarVentas()]
         render(view:"ofertas")

     }

     def ofertas(){
         [listado: administracionService.listarVentas()]
     }

}
