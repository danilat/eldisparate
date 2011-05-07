package de.eldisparate

class AutonomyController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [autonomyInstanceList: Autonomy.list(params), autonomyInstanceTotal: Autonomy.count()]
    }

    def create = {
        def autonomyInstance = new Autonomy()
        autonomyInstance.properties = params
        return [autonomyInstance: autonomyInstance]
    }

    def save = {
        def autonomyInstance = new Autonomy(params)
        if (autonomyInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'autonomy.label', default: 'Autonomy'), autonomyInstance.id])}"
            redirect(action: "show", id: autonomyInstance.id)
        }
        else {
            render(view: "create", model: [autonomyInstance: autonomyInstance])
        }
    }

    def show = {
        def autonomyInstance = Autonomy.get(params.id)
        if (!autonomyInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'autonomy.label', default: 'Autonomy'), params.id])}"
            redirect(action: "list")
        }
        else {
            [autonomyInstance: autonomyInstance]
        }
    }

    def edit = {
        def autonomyInstance = Autonomy.get(params.id)
        if (!autonomyInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'autonomy.label', default: 'Autonomy'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [autonomyInstance: autonomyInstance]
        }
    }

    def update = {
        def autonomyInstance = Autonomy.get(params.id)
        if (autonomyInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (autonomyInstance.version > version) {
                    
                    autonomyInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'autonomy.label', default: 'Autonomy')] as Object[], "Another user has updated this Autonomy while you were editing")
                    render(view: "edit", model: [autonomyInstance: autonomyInstance])
                    return
                }
            }
            autonomyInstance.properties = params
            if (!autonomyInstance.hasErrors() && autonomyInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'autonomy.label', default: 'Autonomy'), autonomyInstance.id])}"
                redirect(action: "show", id: autonomyInstance.id)
            }
            else {
                render(view: "edit", model: [autonomyInstance: autonomyInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'autonomy.label', default: 'Autonomy'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def autonomyInstance = Autonomy.get(params.id)
        if (autonomyInstance) {
            try {
                autonomyInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'autonomy.label', default: 'Autonomy'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'autonomy.label', default: 'Autonomy'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'autonomy.label', default: 'Autonomy'), params.id])}"
            redirect(action: "list")
        }
    }
}
