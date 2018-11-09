package inmobiliaria

class AdministracionController {
    def administracionService

    def index() {
        render(view:"principal")
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

    def volver() {
        render(view:"administrador")
    }

    def ventanaAdministrador() {
        render(view:"administrador")
    }

    def ventanaOperador() {
        render(view:"operador")
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

    def pendientes(){
        [listadoConsultas: administracionService.listarConsultas()]
    }

    def ventasbuscador(){
      if(!params.rubro && !params.localidad && !params.barrio) {
        flash.message="Debe ingresar un rubro/localidad/barrio"
        render(view: 'principal')
      }
        [listadoVentasbuscador: administracionService.listarVentasbuscador(params.rubro, params.localidad, params.barrio)]
    }

    def ventapropiedad(){
        render (view: "ventapropiedad")
    }

    def estadoConsulta(){
        administracionService.quitarConsulta(new Long(params.id))
        redirect(action:"pendientes")
    }

    def estadoPropiedad(){
        administracionService.quitarPropiedad(new Long(params.id))
        render (view:"administrador")
    }

}
