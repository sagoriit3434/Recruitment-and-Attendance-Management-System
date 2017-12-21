package hrms



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AvailAblePositionController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond AvailAblePosition.list(params), model:[availAblePositionInstanceCount: AvailAblePosition.count()]
    }

    def show(AvailAblePosition availAblePositionInstance) {
        respond availAblePositionInstance
    }

    def create() {
        respond new AvailAblePosition(params)
    }

    @Transactional
    def save(AvailAblePosition availAblePositionInstance) {
        if (availAblePositionInstance == null) {
            notFound()
            return
        }

        if (availAblePositionInstance.hasErrors()) {
            respond availAblePositionInstance.errors, view:'create'
            return
        }

        availAblePositionInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'availAblePosition.label', default: 'AvailAblePosition'), availAblePositionInstance.id])
                redirect availAblePositionInstance
            }
            '*' { respond availAblePositionInstance, [status: CREATED] }
        }
    }

    def edit(AvailAblePosition availAblePositionInstance) {
        respond availAblePositionInstance
    }

    @Transactional
    def update(AvailAblePosition availAblePositionInstance) {
        if (availAblePositionInstance == null) {
            notFound()
            return
        }

        if (availAblePositionInstance.hasErrors()) {
            respond availAblePositionInstance.errors, view:'edit'
            return
        }

        availAblePositionInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'AvailAblePosition.label', default: 'AvailAblePosition'), availAblePositionInstance.id])
                redirect availAblePositionInstance
            }
            '*'{ respond availAblePositionInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(AvailAblePosition availAblePositionInstance) {

        if (availAblePositionInstance == null) {
            notFound()
            return
        }

        availAblePositionInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'AvailAblePosition.label', default: 'AvailAblePosition'), availAblePositionInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'availAblePosition.label', default: 'AvailAblePosition'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
