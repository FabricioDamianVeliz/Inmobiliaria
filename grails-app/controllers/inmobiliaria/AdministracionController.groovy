package inmobiliaria

class AdministracionController {
    def administracionService

    def index() {
     render(view:"principal")
     }


     def listarofertasventas(){
         [listadoventas: administracionService.listarofertasventas()]
     }

     def listarofertasalquiler(){
         [listadoalquiler: administracionService.listarofertasalquiler()]
     }

}
