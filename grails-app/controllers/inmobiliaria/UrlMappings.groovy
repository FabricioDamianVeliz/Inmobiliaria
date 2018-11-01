package inmobiliaria

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"/administracion/principal", controller:'administracion', action:'principal')
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
