package inmobiliaria

class LoginController {

  def login() {
   if (request.get) {
     return render(view: 'login')
   }

    def u = Usuario.findByEmail(params.email)
    //def roles = Usuario.getRoles()

     if (u) {
       if (u.password == u.generateMD5_A(params.password)) {
          session.usuario = u
          //if(roles.authority=="ADMINISTRADOR"){
          if(session.usuario.getRoles().any{it.authority=='ADMINISTRADOR'}) {
            redirect(controller: "administracion", action: "sesionAdministrador")
          }
          else{
            redirect(controller: "administracion", action: "sesionOperador")
          }



        } else {
          render(view: "login", model: [message: "Constraseña Incorrecta"])
        }
      } else {
        render(view: "login", model: [message: "No existe el usuario ingresado"])
      }
    }

    def logout() {
      session.usuario=null
      render(view: "/administracion/principal")
    }
}
