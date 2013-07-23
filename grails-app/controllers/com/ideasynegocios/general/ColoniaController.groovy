package com.ideasynegocios.general

import org.springframework.dao.DataIntegrityViolationException

class ColoniaController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [coloniaInstanceList: Colonia.list(params), coloniaInstanceTotal: Colonia.count()]
    }

    def create() {
        [coloniaInstance: new Colonia(params)]
    }

    def save() {
        def coloniaInstance = new Colonia(params)
        if (!coloniaInstance.save(flush: true)) {
            render(view: "create", model: [coloniaInstance: coloniaInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'colonia.label', default: 'Colonia'), coloniaInstance.id])
        redirect(action: "show", id: coloniaInstance.id)
    }

    def show(Long id) {
        def coloniaInstance = Colonia.get(id)
        if (!coloniaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'colonia.label', default: 'Colonia'), id])
            redirect(action: "list")
            return
        }

        [coloniaInstance: coloniaInstance]
    }

    def edit(Long id) {
        def coloniaInstance = Colonia.get(id)
        if (!coloniaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'colonia.label', default: 'Colonia'), id])
            redirect(action: "list")
            return
        }

        [coloniaInstance: coloniaInstance]
    }

    def update(Long id, Long version) {
        def coloniaInstance = Colonia.get(id)
        if (!coloniaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'colonia.label', default: 'Colonia'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (coloniaInstance.version > version) {
                coloniaInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'colonia.label', default: 'Colonia')] as Object[],
                          "Another user has updated this Colonia while you were editing")
                render(view: "edit", model: [coloniaInstance: coloniaInstance])
                return
            }
        }

        coloniaInstance.properties = params

        if (!coloniaInstance.save(flush: true)) {
            render(view: "edit", model: [coloniaInstance: coloniaInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'colonia.label', default: 'Colonia'), coloniaInstance.id])
        redirect(action: "show", id: coloniaInstance.id)
    }

    def delete(Long id) {
        def coloniaInstance = Colonia.get(id)
        if (!coloniaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'colonia.label', default: 'Colonia'), id])
            redirect(action: "list")
            return
        }

        try {
            coloniaInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'colonia.label', default: 'Colonia'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'colonia.label', default: 'Colonia'), id])
            redirect(action: "show", id: id)
        }
    }
}
