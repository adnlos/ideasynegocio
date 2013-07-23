package com.ideasynegocios.seguridad

import org.springframework.dao.DataIntegrityViolationException

class UserSecController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [userSecInstanceList: UserSec.list(params), userSecInstanceTotal: UserSec.count()]
    }

    def create() {
        [userSecInstance: new UserSec(params)]
    }

    def save() {
        def userSecInstance = new UserSec(params)
        if (!userSecInstance.save(flush: true)) {
            render(view: "create", model: [userSecInstance: userSecInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'userSec.label', default: 'UserSec'), userSecInstance.id])
        redirect(action: "show", id: userSecInstance.id)
    }

    def show(Long id) {
        def userSecInstance = UserSec.get(id)
        if (!userSecInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'userSec.label', default: 'UserSec'), id])
            redirect(action: "list")
            return
        }

        [userSecInstance: userSecInstance]
    }

    def edit(Long id) {
        def userSecInstance = UserSec.get(id)
        if (!userSecInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'userSec.label', default: 'UserSec'), id])
            redirect(action: "list")
            return
        }

        [userSecInstance: userSecInstance]
    }

    def update(Long id, Long version) {
        def userSecInstance = UserSec.get(id)
        if (!userSecInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'userSec.label', default: 'UserSec'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (userSecInstance.version > version) {
                userSecInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'userSec.label', default: 'UserSec')] as Object[],
                          "Another user has updated this UserSec while you were editing")
                render(view: "edit", model: [userSecInstance: userSecInstance])
                return
            }
        }

        userSecInstance.properties = params

        if (!userSecInstance.save(flush: true)) {
            render(view: "edit", model: [userSecInstance: userSecInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'userSec.label', default: 'UserSec'), userSecInstance.id])
        redirect(action: "show", id: userSecInstance.id)
    }

    def delete(Long id) {
        def userSecInstance = UserSec.get(id)
        if (!userSecInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'userSec.label', default: 'UserSec'), id])
            redirect(action: "list")
            return
        }

        try {
            userSecInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'userSec.label', default: 'UserSec'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'userSec.label', default: 'UserSec'), id])
            redirect(action: "show", id: id)
        }
    }
}
