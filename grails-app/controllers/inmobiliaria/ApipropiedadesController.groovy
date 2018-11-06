package inmobiliaria
import grails.rest.RestfulController
class ApipropiedadesController extends RestfulController<Propiedad> {

static responseFormats = ['json','xml']

     ApipropiedadesController() {
     super(Propiedad) } //Indica al controlador REST qué clase de dominio considerar


     def lisApiPropiedadesPorRubro (String p) {
      if (p) {
     respond Propiedad.findAllByrubro(p)
      } else { respond([]) } }
    def index() { }
}
