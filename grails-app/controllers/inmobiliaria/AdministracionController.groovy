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

<<<<<<< HEAD
     def sesionOperador(){
         render (view: "operador")
      }

      def consulta(){
        [consulta: new Consulta()]
        render (view: "consulta")
      }

      def guardarConsulta(){
          administracionService.altaConsulta(params)
          render (view: "/administracion/principal")
          //redirect(controller:"administracion",action:"pendiente")
       }

     def pendiente(){
        [listadoConsultas: administracionService.listarConsultas()]
        //render (view: "/administracion/clientes")
     }

=======
>>>>>>> 73a159cac8cc7d633808416cd4ff7d43f1d4f4fc
    def principal(){
        [listadoOfertas: administracionService.listarOfertas()]
     }

     def ventas(){
        [listadoVentas: administracionService.listarVentas()]
     }

     def alquiler(){
        [listadoAlquiler: administracionService.listarAlquiler()]
     }

}
