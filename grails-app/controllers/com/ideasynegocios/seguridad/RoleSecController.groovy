package com.ideasynegocios.seguridad

import org.springframework.dao.DataIntegrityViolationException

class RoleSecController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [roleSecInstanceList: RoleSec.list(params), roleSecInstanceTotal: RoleSec.count()]
    }

    def create() {
        [roleSecInstance: new RoleSec(params)]
    }

    def save() {
        def roleSecInstance = new RoleSec(params)
        if (!roleSecInstance.save(flush: true)) {
            render(view: "create", model: [roleSecInstance: roleSecInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'roleSec.label', default: 'RoleSec'), roleSecInstance.id])
        redirect(action: "show", id: roleSecInstance.id)
    }

    def show(Long id) {
        def roleSecInstance = RoleSec.get(id)
        if (!roleSecInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'roleSec.label', default: 'RoleSec'), id])
            redirect(action: "list")
            return
        }

        [roleSecInstance: roleSecInstance]
    }

    def edit(Long id) {
        def roleSecInstance = RoleSec.get(id)
        if (!roleSecInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'roleSec.label', default: 'RoleSec'), id])
            redirect(action: "list")
            return
        }

        [roleSecInstance: roleSecInstance]
    }

    def update(Long id, Long version) {
        def roleSecInstance = RoleSec.get(id)
        if (!roleSecInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'roleSec.label', default: 'RoleSec'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (roleSecInstance.version > version) {
                roleSecInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'roleSec.label', default: 'RoleSec')] as Object[],
                          "Another user has updated this RoleSec while you were editing")
                render(view: "edit", model: [roleSecInstance: roleSecInstance])
                return
            }
        }

        roleSecInstance.properties = params

        if (!roleSecInstance.save(flush: true)) {
            render(view: "edit", model: [roleSecInstance: roleSecInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'roleSec.label', default: 'RoleSec'), roleSecInstance.id])
        redirect(action: "show", id: roleSecInstance.id)
    }

    def delete(Long id) {
        def roleSecInstance = RoleSec.get(id)
        if (!roleSecInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'roleSec.label', default: 'RoleSec'), id])
            redirect(action: "list")
            return
        }

        try {
            roleSecInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'roleSec.label', default: 'RoleSec'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'roleSec.label', default: 'RoleSec'), id])
            redirect(action: "show", id: id)
        }
    }
}
