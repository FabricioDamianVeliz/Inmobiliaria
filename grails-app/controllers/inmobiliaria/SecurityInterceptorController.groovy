package inmobiliaria

class SecurityInterceptor {

  boolean after() { true }

  void afterView() {
      // no-op
  }

  SecurityInterceptor() {

      match(controller:"administracion", action:"volver")
      match(controller:"administracion", action:"ventanaAdministrador")
      match(controller:"administracion", action:"ventanaOperador")
      match(controller:"administracion", action:"guardarConsulta")

      match(controller:"clientes", action:"index")
      match(controller:"clientes", action:"create")
      match(controller:"clientes", action:"edit")
      match(controller:"clientes", action:"show")

      match(controller:"propiedad", action:"index")
      match(controller:"propiedad", action:"create")
      match(controller:"propiedad", action:"edit")
      match(controller:"propiedad", action:"show")

      match(controller:"contrato", action:"index")
      match(controller:"contrato", action:"create")
      match(controller:"contrato", action:"edit")
      match(controller:"contrato", action:"show")

      match(controller:"vendedor", action:"index")
      match(controller:"vendedor", action:"create")
      match(controller:"vendedor", action:"edit")
      match(controller:"vendedor", action:"show")




  }

  boolean before() {
      if (!session.usuario && actionName != "login") {
          redirect(controller: "login", action: "login")
          return false
      }

      if(controllerName=='contrato' && (actionName=='edit' || actionName=='save' || actionName=='create' || actionName=='delete' )) {
        if(!session.usuario.getRoles().any{it.authority=='ADMINISTRADOR'}) {
            render(view: "/administracion/principal", model: [message:'No tiene permisos para la accion solicitada'])
            return false
        }
      }


      return true
  }
}
