package com.ideasynegocios.business

import org.springframework.dao.DataIntegrityViolationException

class EspacioPublicitarioController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [espacioPublicitarioInstanceList: EspacioPublicitario.list(params), espacioPublicitarioInstanceTotal: EspacioPublicitario.count()]
    }

    def create() {
        [espacioPublicitarioInstance: new EspacioPublicitario(params)]
    }

    def save() {
        def espacioPublicitarioInstance = new EspacioPublicitario(params)
        if (!espacioPublicitarioInstance.save(flush: true)) {
            render(view: "create", model: [espacioPublicitarioInstance: espacioPublicitarioInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'espacioPublicitario.label', default: 'EspacioPublicitario'), espacioPublicitarioInstance.id])
        redirect(action: "show", id: espacioPublicitarioInstance.id)
    }

    def show(Long id) {
        def espacioPublicitarioInstance = EspacioPublicitario.get(id)
        if (!espacioPublicitarioInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'espacioPublicitario.label', default: 'EspacioPublicitario'), id])
            redirect(action: "list")
            return
        }

        [espacioPublicitarioInstance: espacioPublicitarioInstance]
    }

    def edit(Long id) {
        def espacioPublicitarioInstance = EspacioPublicitario.get(id)
        if (!espacioPublicitarioInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'espacioPublicitario.label', default: 'EspacioPublicitario'), id])
            redirect(action: "list")
            return
        }

        [espacioPublicitarioInstance: espacioPublicitarioInstance]
    }

    def update(Long id, Long version) {
        def espacioPublicitarioInstance = EspacioPublicitario.get(id)
        if (!espacioPublicitarioInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'espacioPublicitario.label', default: 'EspacioPublicitario'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (espacioPublicitarioInstance.version > version) {
                espacioPublicitarioInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'espacioPublicitario.label', default: 'EspacioPublicitario')] as Object[],
                          "Another user has updated this EspacioPublicitario while you were editing")
                render(view: "edit", model: [espacioPublicitarioInstance: espacioPublicitarioInstance])
                return
            }
        }

        espacioPublicitarioInstance.properties = params

        if (!espacioPublicitarioInstance.save(flush: true)) {
            render(view: "edit", model: [espacioPublicitarioInstance: espacioPublicitarioInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'espacioPublicitario.label', default: 'EspacioPublicitario'), espacioPublicitarioInstance.id])
        redirect(action: "show", id: espacioPublicitarioInstance.id)
    }

    def delete(Long id) {
        def espacioPublicitarioInstance = EspacioPublicitario.get(id)
        if (!espacioPublicitarioInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'espacioPublicitario.label', default: 'EspacioPublicitario'), id])
            redirect(action: "list")
            return
        }

        try {
            espacioPublicitarioInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'espacioPublicitario.label', default: 'EspacioPublicitario'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'espacioPublicitario.label', default: 'EspacioPublicitario'), id])
            redirect(action: "show", id: id)
        }
    }
}
