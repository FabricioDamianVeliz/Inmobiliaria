package inmobiliaria

class BootStrap {

  def init = { servletContext ->

  //Vendedores

    def vendedor1= new Vendedor(nombre:'Emiliano',
    apellido:'Mercado',
    dni:'21458260',
    direccion:'Villa Cubas',
    telefono:'3834153268',
    email:'emiliano@gmail.com')
    vendedor1.save(flush:true)

    def vendedor2= new Vendedor(nombre:'Gaston',
    apellido:'Ontivero',
    dni:'25614897',
    direccion:'Barrio 920',
    telefono:'3834029815',
    email:'gaston@gmail.com')
    vendedor2.save(flush:true)

    def vendedor3= new Vendedor(nombre:'Rodrigo',
    apellido:'Garribia',
    dni:'15629848',
    direccion:'La Tablada',
    telefono:'3834085521',
    email:'rodri@gmail.com')
    vendedor3.save(flush:true)


  //Compradores  
    def comprador1= new Comprador(nombre:'Gabriel',
    apellido:'Seco',
    dni:'30649782',
    direccion:'Barrio 240',
    telefono:'3834009965',
    email:'gabi@gmail.com')
    comprador1.save(flush:true)


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
    estado:'Disponible',
    vendedor: vendedor1)
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
    estado:'Disponible',
    vendedor: vendedor1)
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
    estado:'Disponible',
    vendedor: vendedor1)
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
    estado:'Disponible',
    vendedor: vendedor1)
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
    estado:'Disponible',
    vendedor: vendedor2)
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
    estado:'No Disponible',
    vendedor: vendedor2)
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
    estado:'Disponible',
    vendedor: vendedor2)
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
    estado:'Disponible',
    vendedor: vendedor2)
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
    estado:'Disponible',
    vendedor: vendedor3)
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
    estado:'Disponible',
    vendedor: vendedor3)
    prop10.save(flush:true)

    vendedor1.addToPropiedad(prop1)
    vendedor1.addToPropiedad(prop2)
    vendedor1.addToPropiedad(prop3)
    vendedor1.addToPropiedad(prop4)
    vendedor1.save()

    vendedor2.addToPropiedad(prop5)
    vendedor2.addToPropiedad(prop6)
    vendedor2.addToPropiedad(prop7)
    vendedor2.addToPropiedad(prop8)
    vendedor2.save()
    
    vendedor3.addToPropiedad(prop9)
    vendedor3.addToPropiedad(prop10)
    vendedor3.save()

//Consultas
    def consulta1= new Consulta(nombre:'Fabricio',
    apellido: 'Veliz',
    telefono:'4441019',
    email:'fa@gmail.com',
    comentario: 'No me gusta',
    estado: 'No Leido')
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

    def usuario3 = new Usuario(nombreUsuario: "Alejandro" ,password: "12345",email: "alejandro@gmail.com")
    if(!usuario3.save(flush: true)) {
      usuario3.errors.each{
        println it
      }
    }

    def rol3 = new Rol(authority: "OPERADOR")
    if(!rol3.save(flush: true)) {
      rol3.errors.each{
        println it
      }
    }

    def usuarioRol3 = new UsuarioRol(usuario: usuario3, rol: rol3)
    if(!usuarioRol3.save(flush: true)) {
      usuarioRol3.errors.each{
        println it
      }
    }

    }
    def destroy = {
    }
}
