package com.ideasynegocios.business
import com.ideasynegocios.seguridad.*

class ContactoNegocio extends Persona {

	static belongsTo = [negocio:Negocio]
	
    static constraints = {
    }
}
