package com.ideasynegocios.general

class Colonia {
	String nombreCompleto
	String tipoColonia

	static belongsTo = [municipio: Municipio]

	static constraints = {
		nombreCompleto blank:false
		tipoColonia blank:false
	}

	String toString(){
		return "${nombreCompleto}"
	}
}
