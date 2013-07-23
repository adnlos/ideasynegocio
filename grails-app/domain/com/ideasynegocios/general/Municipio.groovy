package com.ideasynegocios.general

class Municipio {

    static belongsTo = [estado: Estado]

	String nombre
	String nombreCompleto
    String rutaImagen
    String rutaImagenSel

	static hasMany = [colonias: Colonia] 

    static constraints = {
    	nombre blank:false, unique:true
    	nombreCompleto blank:true
        rutaImagen blank:true
        rutaImagenSel nullable:true
	}

    String toString(){
        return "${nombre}"
    }
}
