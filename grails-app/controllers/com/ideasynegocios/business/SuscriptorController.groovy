package com.ideasynegocios.business

import org.springframework.dao.DataIntegrityViolationException

class SuscriptorController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [suscriptorInstanceList: Suscriptor.list(params), suscriptorInstanceTotal: Suscriptor.count()]
    }

    def create() {
        [suscriptorInstance: new Suscriptor(params)]
    }

    def save() {
        def suscriptorInstance = new Suscriptor(params)
        if (!suscriptorInstance.save(flush: true)) {
            render(view: "create", model: [suscriptorInstance: suscriptorInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'suscriptor.label', default: 'Suscriptor'), suscriptorInstance.id])
        redirect(action: "show", id: suscriptorInstance.id)
    }

    def show(Long id) {
        def suscriptorInstance = Suscriptor.get(id)
        if (!suscriptorInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'suscriptor.label', default: 'Suscriptor'), id])
            redirect(action: "list")
            return
        }

        [suscriptorInstance: suscriptorInstance]
    }

    def edit(Long id) {
        def suscriptorInstance = Suscriptor.get(id)
        if (!suscriptorInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'suscriptor.label', default: 'Suscriptor'), id])
            redirect(action: "list")
            return
        }

        [suscriptorInstance: suscriptorInstance]
    }

    def update(Long id, Long version) {
        def suscriptorInstance = Suscriptor.get(id)
        if (!suscriptorInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'suscriptor.label', default: 'Suscriptor'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (suscriptorInstance.version > version) {
                suscriptorInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'suscriptor.label', default: 'Suscriptor')] as Object[],
                          "Another user has updated this Suscriptor while you were editing")
                render(view: "edit", model: [suscriptorInstance: suscriptorInstance])
                return
            }
        }

        suscriptorInstance.properties = params

        if (!suscriptorInstance.save(flush: true)) {
            render(view: "edit", model: [suscriptorInstance: suscriptorInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'suscriptor.label', default: 'Suscriptor'), suscriptorInstance.id])
        redirect(action: "show", id: suscriptorInstance.id)
    }

    def delete(Long id) {
        def suscriptorInstance = Suscriptor.get(id)
        if (!suscriptorInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'suscriptor.label', default: 'Suscriptor'), id])
            redirect(action: "list")
            return
        }

        try {
            suscriptorInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'suscriptor.label', default: 'Suscriptor'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'suscriptor.label', default: 'Suscriptor'), id])
            redirect(action: "show", id: id)
        }
    }
}
