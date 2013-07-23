package com.ideasynegocios.business

import org.springframework.dao.DataIntegrityViolationException

class PaqueteController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [paqueteInstanceList: Paquete.list(params), paqueteInstanceTotal: Paquete.count()]
    }

    def create() {
        [paqueteInstance: new Paquete(params)]
    }

    def save() {
        def paqueteInstance = new Paquete(params)
        if (!paqueteInstance.save(flush: true)) {
            render(view: "create", model: [paqueteInstance: paqueteInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'paquete.label', default: 'Paquete'), paqueteInstance.id])
        redirect(action: "show", id: paqueteInstance.id)
    }

    def show(Long id) {
        def paqueteInstance = Paquete.get(id)
        if (!paqueteInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'paquete.label', default: 'Paquete'), id])
            redirect(action: "list")
            return
        }

        [paqueteInstance: paqueteInstance]
    }

    def edit(Long id) {
        def paqueteInstance = Paquete.get(id)
        if (!paqueteInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'paquete.label', default: 'Paquete'), id])
            redirect(action: "list")
            return
        }

        [paqueteInstance: paqueteInstance]
    }

    def update(Long id, Long version) {
        def paqueteInstance = Paquete.get(id)
        if (!paqueteInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'paquete.label', default: 'Paquete'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (paqueteInstance.version > version) {
                paqueteInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'paquete.label', default: 'Paquete')] as Object[],
                          "Another user has updated this Paquete while you were editing")
                render(view: "edit", model: [paqueteInstance: paqueteInstance])
                return
            }
        }

        paqueteInstance.properties = params

        if (!paqueteInstance.save(flush: true)) {
            render(view: "edit", model: [paqueteInstance: paqueteInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'paquete.label', default: 'Paquete'), paqueteInstance.id])
        redirect(action: "show", id: paqueteInstance.id)
    }

    def delete(Long id) {
        def paqueteInstance = Paquete.get(id)
        if (!paqueteInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'paquete.label', default: 'Paquete'), id])
            redirect(action: "list")
            return
        }

        try {
            paqueteInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'paquete.label', default: 'Paquete'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'paquete.label', default: 'Paquete'), id])
            redirect(action: "show", id: id)
        }
    }
}
