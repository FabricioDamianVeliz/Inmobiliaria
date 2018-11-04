package inmobiliaria

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class ClientesController {

    ClientesService clientesService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond clientesService.list(params), model:[clientesCount: clientesService.count()]
    }

    def show(Long id) {
        respond clientesService.get(id)
    }

    def create() {
        respond new Clientes(params)
    }

    def save(Clientes clientes) {
        if (clientes == null) {
            notFound()
            return
        }

        try {
            clientesService.save(clientes)
        } catch (ValidationException e) {
            respond clientes.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'clientes.label', default: 'Clientes'), clientes.id])
                redirect clientes
            }
            '*' { respond clientes, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond clientesService.get(id)
    }

    def update(Clientes clientes) {
        if (clientes == null) {
            notFound()
            return
        }

        try {
            clientesService.save(clientes)
        } catch (ValidationException e) {
            respond clientes.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'clientes.label', default: 'Clientes'), clientes.id])
                redirect clientes
            }
            '*'{ respond clientes, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        clientesService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'clientes.label', default: 'Clientes'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'clientes.label', default: 'Clientes'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
