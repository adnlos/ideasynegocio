package com.ideasynegocios.business

import org.springframework.dao.DataIntegrityViolationException

class ImagenNegocioController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [imagenNegocioInstanceList: ImagenNegocio.list(params), imagenNegocioInstanceTotal: ImagenNegocio.count()]
    }

    def create() {
        [imagenNegocioInstance: new ImagenNegocio(params)]
    }

    def save() {
        def imagenNegocioInstance = new ImagenNegocio(params)
        if (!imagenNegocioInstance.save(flush: true)) {
            render(view: "create", model: [imagenNegocioInstance: imagenNegocioInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'imagenNegocio.label', default: 'ImagenNegocio'), imagenNegocioInstance.id])
        redirect(action: "show", id: imagenNegocioInstance.id)
    }

    def show(Long id) {
        def imagenNegocioInstance = ImagenNegocio.get(id)
        if (!imagenNegocioInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'imagenNegocio.label', default: 'ImagenNegocio'), id])
            redirect(action: "list")
            return
        }

        [imagenNegocioInstance: imagenNegocioInstance]
    }

    def edit(Long id) {
        def imagenNegocioInstance = ImagenNegocio.get(id)
        if (!imagenNegocioInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'imagenNegocio.label', default: 'ImagenNegocio'), id])
            redirect(action: "list")
            return
        }

        [imagenNegocioInstance: imagenNegocioInstance]
    }

    def update(Long id, Long version) {
        def imagenNegocioInstance = ImagenNegocio.get(id)
        if (!imagenNegocioInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'imagenNegocio.label', default: 'ImagenNegocio'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (imagenNegocioInstance.version > version) {
                imagenNegocioInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'imagenNegocio.label', default: 'ImagenNegocio')] as Object[],
                          "Another user has updated this ImagenNegocio while you were editing")
                render(view: "edit", model: [imagenNegocioInstance: imagenNegocioInstance])
                return
            }
        }

        imagenNegocioInstance.properties = params

        if (!imagenNegocioInstance.save(flush: true)) {
            render(view: "edit", model: [imagenNegocioInstance: imagenNegocioInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'imagenNegocio.label', default: 'ImagenNegocio'), imagenNegocioInstance.id])
        redirect(action: "show", id: imagenNegocioInstance.id)
    }

    def delete(Long id) {
        def imagenNegocioInstance = ImagenNegocio.get(id)
        if (!imagenNegocioInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'imagenNegocio.label', default: 'ImagenNegocio'), id])
            redirect(action: "list")
            return
        }

        try {
            imagenNegocioInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'imagenNegocio.label', default: 'ImagenNegocio'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'imagenNegocio.label', default: 'ImagenNegocio'), id])
            redirect(action: "show", id: id)
        }
    }
}
