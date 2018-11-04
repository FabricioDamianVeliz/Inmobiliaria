package inmobiliaria

class BootStrap {

  def init = { servletContext ->

  //Propiedades en Alquilar

    def prop1= new Propiedad( calle:'Belgrano',
    numero: 125,
    barrio:'Centro',
    localidad:'Capital',
    ciudad: 'San Fernando del Valle de Catamarca',
    superficie: 64,
    precio: 1000000,
    rubro: 'Venta',
    categoria:'Casa',
    cantDormitorio:2,
    cantBanios:1,
    estado:'Libre')
    prop1.save(flush:true)


    def prop2= new Propiedad( calle:'Rivadavia',
    numero: 15,
    barrio:'9 de Julio',
    localidad:'Capital',
    ciudad: 'San Fernando del Valle de Catamarca',
    superficie: 100,
    precio: 90000,
    rubro: 'Venta',
    categoria:'Local',
    cantDormitorio:3,
    cantBanios:2,
    estado:'Libre')
    prop2.save(flush:true)


    def prop3= new Propiedad( calle:'Mate de Luna',
    numero: 15,
    barrio:'Villa Cuba',
    localidad:'Capital',
    ciudad: 'San Fernando del Valle de Catamarca',
    superficie: 100,
    precio: 120000,
    rubro: 'Venta',
    categoria:'Departamento',
    cantDormitorio:3,
    cantBanios:2,
    estado:'Libre')
    prop3.save(flush:true)


    def prop4= new Propiedad( calle:'Maipu',
    numero: 80,
    barrio:'Los Jardines',
    localidad:'Capital',
    ciudad: 'San Fernando del Valle de Catamarca',
    superficie: 100,
    precio: 200000,
    rubro: 'Venta',
    categoria:'Oficina',
    cantDormitorio:3,
    cantBanios:2,
    estado:'Libre')
    prop4.save(flush:true)


    def prop5= new Propiedad( calle:'Esquiu',
    numero: 30,
    barrio:'Barrio 250',
    localidad:'Capital',
    ciudad: 'San Fernando del Valle de Catamarca',
    superficie: 64,
    precio: 1000000,
    rubro: 'Venta',
    categoria:'Casa',
    cantDormitorio:2,
    cantBanios:1,
    estado:'Libre')
    prop5.save(flush:true)


    def prop6= new Propiedad( calle:'Brasil',
    numero: 60,
    barrio:'Parque America',
    localidad:'Capital',
    ciudad: 'San Fernando del Valle de Catamarca',
    superficie: 100,
    precio: 50000,
    rubro: 'Venta',
    categoria:'Local',
    cantDormitorio:3,
    cantBanios:2,
    estado:'Vendida')
    prop6.save(flush:true)


    def prop7= new Propiedad( calle:'Virgen del Valle',
    numero: 90,
    barrio:'Barrio 250',
    localidad:'Capital',
    ciudad: 'San Fernando del Valle de Catamarca',
    superficie: 100,
    precio: 120000,
    rubro: 'Venta',
    categoria:'Departamento',
    cantDormitorio:3,
    cantBanios:2,
    estado:'Libre')
    prop7.save(flush:true)


    def prop8= new Propiedad( calle:'Republica',
    numero: 200,
    barrio:'Centro',
    localidad:'Capital',
    ciudad: 'San Fernando del Valle de Catamarca',
    superficie: 100,
    precio: 300000,
    rubro: 'Venta',
    categoria:'Oficina',
    cantDormitorio:3,
    cantBanios:2,
    estado:'Libre')
    prop8.save(flush:true)


//Propiedades en Alquilar

    def prop9= new Propiedad( calle:'Salta',
    numero: 15,
    barrio:'Centro',
    localidad:'Capital',
    ciudad: 'San Fernando del Valle de Catamarca',
    superficie: 100,
    precio: 70000,
    rubro: 'Alquiler',
    categoria:'Casa',
    cantDormitorio:3,
    cantBanios:2,
    estado:'Libre')
    prop9.save(flush:true)


    def prop10= new Propiedad( calle:'Ayacucho',
    numero: 195,
    barrio:'Centro',
    localidad:'Capital',
    ciudad: 'San Fernando del Valle de Catamarca',
    superficie: 100,
    precio: 30000,
    rubro: 'Alquiler',
    categoria:'Casa',
    cantDormitorio:3,
    cantBanios:2,
    estado:'Libre')
    prop10.save(flush:true)
    
    //Consultas
    def consulta1= new Consulta( nombre:'Fabricio',
    apellido: 'Veliz',
    telefono:'4441019',
    direccion:'Santa Rosa',
    comentario: 'Y ELLA?')
    consulta1.save(flush:true)

  //Usuarios

    def usuario1 = new Usuario(nombreUsuario: "Fabricio" ,password: "12345",email: "fabricio@gmail.com")
    if(!usuario1.save(flush: true)) {
      usuario1.errors.each{
        println it
      }
    }

    def rol1 = new Rol(authority: "ADMINISTRADOR")
    if(!rol1.save(flush: true)) {
      rol1.errors.each{
        println it
      }
    }

    def usuarioRol1 = new UsuarioRol(usuario: usuario1, rol: rol1)
    if(!usuarioRol1.save(flush: true)) {
      usuarioRol1.errors.each{
        println it
      }
    }

    def usuario2 = new Usuario(nombreUsuario: "Esteban" ,password: "12345",email: "esteban@gmail.com")
    if(!usuario2.save(flush: true)) {
      usuario2.errors.each{
        println it
      }
    }

    def rol2 = new Rol(authority: "OPERADOR")
    if(!rol2.save(flush: true)) {
      rol2.errors.each{
        println it
      }
    }

    def usuarioRol2 = new UsuarioRol(usuario: usuario2, rol: rol2)
    if(!usuarioRol2.save(flush: true)) {
      usuarioRol2.errors.each{
        println it
      }
    }

    }
    def destroy = {
    }
}
