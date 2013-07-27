package com.ideasynegocios.general

import org.springframework.dao.DataIntegrityViolationException

class InicioController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        log.debug "esto es el index"
    }

    
    
}
