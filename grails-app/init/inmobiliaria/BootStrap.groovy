package inmobiliaria

class BootStrap {

    def init = { servletContext ->

    Administrador administrador1 = new Administrador(nombre:'German', apellido:'Pioli', dni:'21524780', direccion:'Barrio Parque America', telefono:'3834101500', email:'admi@hotmail.com', usuario:'admi', contraseña:'123')
    if(!administrador1.save(flush:true)){

          administrador1.errors.allErrors.each{

            println it
          }
        }

    Inmobiliaria inmobiliaria1 = new Inmobiliaria(nombre:'SIGAI', direccion:'Miami Beach', administrador: administrador1)
    if(!inmobiliaria1.save(flush:true)){

          inmobiliaria1.errors.allErrors.each{

            println it
          }
        }
  
   }
    def destroy = {
    }
}
