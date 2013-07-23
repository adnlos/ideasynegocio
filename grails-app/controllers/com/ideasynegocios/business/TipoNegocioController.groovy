package com.ideasynegocios.business

import org.springframework.dao.DataIntegrityViolationException

class TipoNegocioController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [tipoNegocioInstanceList: TipoNegocio.list(params), tipoNegocioInstanceTotal: TipoNegocio.count()]
    }

    def create() {
        [tipoNegocioInstance: new TipoNegocio(params)]
    }

    def save() {
        def tipoNegocioInstance = new TipoNegocio(params)
        if (!tipoNegocioInstance.save(flush: true)) {
            render(view: "create", model: [tipoNegocioInstance: tipoNegocioInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'tipoNegocio.label', default: 'TipoNegocio'), tipoNegocioInstance.id])
        redirect(action: "show", id: tipoNegocioInstance.id)
    }

    def show(Long id) {
        def tipoNegocioInstance = TipoNegocio.get(id)
        if (!tipoNegocioInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'tipoNegocio.label', default: 'TipoNegocio'), id])
            redirect(action: "list")
            return
        }

        [tipoNegocioInstance: tipoNegocioInstance]
    }

    def edit(Long id) {
        def tipoNegocioInstance = TipoNegocio.get(id)
        if (!tipoNegocioInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'tipoNegocio.label', default: 'TipoNegocio'), id])
            redirect(action: "list")
            return
        }

        [tipoNegocioInstance: tipoNegocioInstance]
    }

    def update(Long id, Long version) {
        def tipoNegocioInstance = TipoNegocio.get(id)
        if (!tipoNegocioInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'tipoNegocio.label', default: 'TipoNegocio'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (tipoNegocioInstance.version > version) {
                tipoNegocioInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'tipoNegocio.label', default: 'TipoNegocio')] as Object[],
                          "Another user has updated this TipoNegocio while you were editing")
                render(view: "edit", model: [tipoNegocioInstance: tipoNegocioInstance])
                return
            }
        }

        tipoNegocioInstance.properties = params

        if (!tipoNegocioInstance.save(flush: true)) {
            render(view: "edit", model: [tipoNegocioInstance: tipoNegocioInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'tipoNegocio.label', default: 'TipoNegocio'), tipoNegocioInstance.id])
        redirect(action: "show", id: tipoNegocioInstance.id)
    }

    def delete(Long id) {
        def tipoNegocioInstance = TipoNegocio.get(id)
        if (!tipoNegocioInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'tipoNegocio.label', default: 'TipoNegocio'), id])
            redirect(action: "list")
            return
        }

        try {
            tipoNegocioInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'tipoNegocio.label', default: 'TipoNegocio'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'tipoNegocio.label', default: 'TipoNegocio'), id])
            redirect(action: "show", id: id)
        }
    }
}
