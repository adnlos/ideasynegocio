package com.ideasynegocios.seguridad

import org.springframework.dao.DataIntegrityViolationException

class UserSecRoleSecController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [userSecRoleSecInstanceList: UserSecRoleSec.list(params), userSecRoleSecInstanceTotal: UserSecRoleSec.count()]
    }

    def create() {
        [userSecRoleSecInstance: new UserSecRoleSec(params)]
    }

    def save() {
        def userSecRoleSecInstance = new UserSecRoleSec(params)
        if (!userSecRoleSecInstance.save(flush: true)) {
            render(view: "create", model: [userSecRoleSecInstance: userSecRoleSecInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'userSecRoleSec.label', default: 'UserSecRoleSec'), userSecRoleSecInstance.id])
        redirect(action: "show", id: userSecRoleSecInstance.id)
    }

    def show(Long id) {
        def userSecRoleSecInstance = UserSecRoleSec.get(id)
        if (!userSecRoleSecInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'userSecRoleSec.label', default: 'UserSecRoleSec'), id])
            redirect(action: "list")
            return
        }

        [userSecRoleSecInstance: userSecRoleSecInstance]
    }

    def edit(Long id) {
        def userSecRoleSecInstance = UserSecRoleSec.get(id)
        if (!userSecRoleSecInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'userSecRoleSec.label', default: 'UserSecRoleSec'), id])
            redirect(action: "list")
            return
        }

        [userSecRoleSecInstance: userSecRoleSecInstance]
    }

    def update(Long id, Long version) {
        def userSecRoleSecInstance = UserSecRoleSec.get(id)
        if (!userSecRoleSecInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'userSecRoleSec.label', default: 'UserSecRoleSec'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (userSecRoleSecInstance.version > version) {
                userSecRoleSecInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'userSecRoleSec.label', default: 'UserSecRoleSec')] as Object[],
                          "Another user has updated this UserSecRoleSec while you were editing")
                render(view: "edit", model: [userSecRoleSecInstance: userSecRoleSecInstance])
                return
            }
        }

        userSecRoleSecInstance.properties = params

        if (!userSecRoleSecInstance.save(flush: true)) {
            render(view: "edit", model: [userSecRoleSecInstance: userSecRoleSecInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'userSecRoleSec.label', default: 'UserSecRoleSec'), userSecRoleSecInstance.id])
        redirect(action: "show", id: userSecRoleSecInstance.id)
    }

    def delete(Long id) {
        def userSecRoleSecInstance = UserSecRoleSec.get(id)
        if (!userSecRoleSecInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'userSecRoleSec.label', default: 'UserSecRoleSec'), id])
            redirect(action: "list")
            return
        }

        try {
            userSecRoleSecInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'userSecRoleSec.label', default: 'UserSecRoleSec'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'userSecRoleSec.label', default: 'UserSecRoleSec'), id])
            redirect(action: "show", id: id)
        }
    }
}
