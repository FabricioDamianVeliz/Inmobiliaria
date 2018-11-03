package inmobiliaria

class AdministracionController {
    def administracionService

    def index() {
        render(view:"principal")
     }

    def ventanaAdministrador() {
        render(view:"administrador")
     }

    def ventanaOperador() {
        render(view:"operador")
     }

    def sesion(){
        render (view: "administrador")
     }

     def clientes(){
        [listadoClientes: administracionService.listarClientes()]
     }

    def principal(){
        [listadoOfertas: administracionService.listarOfertas()]
     }

     def ventas(){
        [listadoVentas: administracionService.listarVentas()]
     }

     def alquiler(){
        [listadoAlquiler: administracionService.listarAlquiler()]
     }

     def ventas1(){
           [listadoVentas1: administracionService.listarVentas1(params.rubro, params.localidad, params.barrio)]
     }

}
