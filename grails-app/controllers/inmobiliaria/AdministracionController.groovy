package inmobiliaria

class AdministracionController {
    def administracionService

    def index() {
     render(view:"principal")
     }


     def principal(){
         [listadoventas: administracionService.listarofertasventas()]
         [listadoalquiler: administracionService.listarofertasalquiler()]
     }

}
