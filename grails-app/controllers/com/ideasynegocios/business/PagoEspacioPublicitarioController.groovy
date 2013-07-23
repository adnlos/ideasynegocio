package com.ideasynegocios.business

import org.springframework.dao.DataIntegrityViolationException

class PagoEspacioPublicitarioController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [pagoEspacioPublicitarioInstanceList: PagoEspacioPublicitario.list(params), pagoEspacioPublicitarioInstanceTotal: PagoEspacioPublicitario.count()]
    }

    def create() {
        [pagoEspacioPublicitarioInstance: new PagoEspacioPublicitario(params)]
    }

    def save() {
        def pagoEspacioPublicitarioInstance = new PagoEspacioPublicitario(params)
        if (!pagoEspacioPublicitarioInstance.save(flush: true)) {
            render(view: "create", model: [pagoEspacioPublicitarioInstance: pagoEspacioPublicitarioInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'pagoEspacioPublicitario.label', default: 'PagoEspacioPublicitario'), pagoEspacioPublicitarioInstance.id])
        redirect(action: "show", id: pagoEspacioPublicitarioInstance.id)
    }

    def show(Long id) {
        def pagoEspacioPublicitarioInstance = PagoEspacioPublicitario.get(id)
        if (!pagoEspacioPublicitarioInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'pagoEspacioPublicitario.label', default: 'PagoEspacioPublicitario'), id])
            redirect(action: "list")
            return
        }

        [pagoEspacioPublicitarioInstance: pagoEspacioPublicitarioInstance]
    }

    def edit(Long id) {
        def pagoEspacioPublicitarioInstance = PagoEspacioPublicitario.get(id)
        if (!pagoEspacioPublicitarioInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'pagoEspacioPublicitario.label', default: 'PagoEspacioPublicitario'), id])
            redirect(action: "list")
            return
        }

        [pagoEspacioPublicitarioInstance: pagoEspacioPublicitarioInstance]
    }

    def update(Long id, Long version) {
        def pagoEspacioPublicitarioInstance = PagoEspacioPublicitario.get(id)
        if (!pagoEspacioPublicitarioInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'pagoEspacioPublicitario.label', default: 'PagoEspacioPublicitario'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (pagoEspacioPublicitarioInstance.version > version) {
                pagoEspacioPublicitarioInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'pagoEspacioPublicitario.label', default: 'PagoEspacioPublicitario')] as Object[],
                          "Another user has updated this PagoEspacioPublicitario while you were editing")
                render(view: "edit", model: [pagoEspacioPublicitarioInstance: pagoEspacioPublicitarioInstance])
                return
            }
        }

        pagoEspacioPublicitarioInstance.properties = params

        if (!pagoEspacioPublicitarioInstance.save(flush: true)) {
            render(view: "edit", model: [pagoEspacioPublicitarioInstance: pagoEspacioPublicitarioInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'pagoEspacioPublicitario.label', default: 'PagoEspacioPublicitario'), pagoEspacioPublicitarioInstance.id])
        redirect(action: "show", id: pagoEspacioPublicitarioInstance.id)
    }

    def delete(Long id) {
        def pagoEspacioPublicitarioInstance = PagoEspacioPublicitario.get(id)
        if (!pagoEspacioPublicitarioInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'pagoEspacioPublicitario.label', default: 'PagoEspacioPublicitario'), id])
            redirect(action: "list")
            return
        }

        try {
            pagoEspacioPublicitarioInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'pagoEspacioPublicitario.label', default: 'PagoEspacioPublicitario'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'pagoEspacioPublicitario.label', default: 'PagoEspacioPublicitario'), id])
            redirect(action: "show", id: id)
        }
    }
}
