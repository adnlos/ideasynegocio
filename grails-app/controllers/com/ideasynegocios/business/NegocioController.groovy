package com.ideasynegocios.business
import com.ideasynegocios.general.*

import org.springframework.dao.DataIntegrityViolationException

class NegocioController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [negocioInstanceList: Negocio.list(params), negocioInstanceTotal: Negocio.count()]
    }

    def create() {
        [negocioInstance: new Negocio(params)]
    }

    def save() {
        def negocioInstance = new Negocio(params)
        
        def imgPrincipal = request.getFile('imagenPrincipal')
        if (!imgPrincipal.empty) {
            byte[] f = imgPrincipal.getBytes()
             log.debug "*################ " + imgPrincipal.originalFilename + imgPrincipal.contentType +imgPrincipal.size  + imgPrincipal
            def imagenPri = new Imagen(
                nombre : imgPrincipal.originalFilename
                , tipoContenido : imgPrincipal.contentType
                , tamano : imgPrincipal.size
                , archivo : imgPrincipal
            )

            if (negocioInstance.imagenes) {
                negocioInstance.imagenes?.clear()
            } else {
                negocioInstance.imagenes = []
            }

            negocioInstance.imagenes << imagenPri
        }


        if (!negocioInstance.save(flush: true)) {
            render(view: "create", model: [negocioInstance: negocioInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'negocio.label', default: 'Negocio'), negocioInstance.id])
        redirect(action: "show", id: negocioInstance.id)
    }

    def show(Long id) {
        def negocioInstance = Negocio.get(id)
        if (!negocioInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'negocio.label', default: 'Negocio'), id])
            redirect(action: "list")
            return
        }

        [negocioInstance: negocioInstance]
    }

    def edit(Long id) {
        def negocioInstance = Negocio.get(id)
        if (!negocioInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'negocio.label', default: 'Negocio'), id])
            redirect(action: "list")
            return
        }

        [negocioInstance: negocioInstance]
    }

    def update(Long id, Long version) {
        def negocioInstance = Negocio.get(id)
        if (!negocioInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'negocio.label', default: 'Negocio'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (negocioInstance.version > version) {
                negocioInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'negocio.label', default: 'Negocio')] as Object[],
                          "Another user has updated this Negocio while you were editing")
                render(view: "edit", model: [negocioInstance: negocioInstance])
                return
            }
        }

        negocioInstance.properties = params

        if (!negocioInstance.save(flush: true)) {
            render(view: "edit", model: [negocioInstance: negocioInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'negocio.label', default: 'Negocio'), negocioInstance.id])
        redirect(action: "show", id: negocioInstance.id)
    }

    def delete(Long id) {
        def negocioInstance = Negocio.get(id)
        if (!negocioInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'negocio.label', default: 'Negocio'), id])
            redirect(action: "list")
            return
        }

        try {
            negocioInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'negocio.label', default: 'Negocio'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'negocio.label', default: 'Negocio'), id])
            redirect(action: "show", id: id)
        }
    }


    def infoNegocio = {
        log.debug "params" + params
    }
}
