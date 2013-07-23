package com.ideasynegocios.business

import org.springframework.dao.DataIntegrityViolationException

class ContactoNegocioController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [contactoNegocioInstanceList: ContactoNegocio.list(params), contactoNegocioInstanceTotal: ContactoNegocio.count()]
    }

    def create() {
        [contactoNegocioInstance: new ContactoNegocio(params)]
    }

    def save() {
        def contactoNegocioInstance = new ContactoNegocio(params)
        if (!contactoNegocioInstance.save(flush: true)) {
            render(view: "create", model: [contactoNegocioInstance: contactoNegocioInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'contactoNegocio.label', default: 'ContactoNegocio'), contactoNegocioInstance.id])
        redirect(action: "show", id: contactoNegocioInstance.id)
    }

    def show(Long id) {
        def contactoNegocioInstance = ContactoNegocio.get(id)
        if (!contactoNegocioInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'contactoNegocio.label', default: 'ContactoNegocio'), id])
            redirect(action: "list")
            return
        }

        [contactoNegocioInstance: contactoNegocioInstance]
    }

    def edit(Long id) {
        def contactoNegocioInstance = ContactoNegocio.get(id)
        if (!contactoNegocioInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'contactoNegocio.label', default: 'ContactoNegocio'), id])
            redirect(action: "list")
            return
        }

        [contactoNegocioInstance: contactoNegocioInstance]
    }

    def update(Long id, Long version) {
        def contactoNegocioInstance = ContactoNegocio.get(id)
        if (!contactoNegocioInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'contactoNegocio.label', default: 'ContactoNegocio'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (contactoNegocioInstance.version > version) {
                contactoNegocioInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'contactoNegocio.label', default: 'ContactoNegocio')] as Object[],
                          "Another user has updated this ContactoNegocio while you were editing")
                render(view: "edit", model: [contactoNegocioInstance: contactoNegocioInstance])
                return
            }
        }

        contactoNegocioInstance.properties = params

        if (!contactoNegocioInstance.save(flush: true)) {
            render(view: "edit", model: [contactoNegocioInstance: contactoNegocioInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'contactoNegocio.label', default: 'ContactoNegocio'), contactoNegocioInstance.id])
        redirect(action: "show", id: contactoNegocioInstance.id)
    }

    def delete(Long id) {
        def contactoNegocioInstance = ContactoNegocio.get(id)
        if (!contactoNegocioInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'contactoNegocio.label', default: 'ContactoNegocio'), id])
            redirect(action: "list")
            return
        }

        try {
            contactoNegocioInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'contactoNegocio.label', default: 'ContactoNegocio'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'contactoNegocio.label', default: 'ContactoNegocio'), id])
            redirect(action: "show", id: id)
        }
    }
}
