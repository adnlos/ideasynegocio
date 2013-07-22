package com.ideasynegocios.general

class Estado {

	static belongsTo = [pais: Pais]
	String nombre
	String abreviatura
	static hasMany = [municipios: Municipio] 

	static constraints = {
		nombre blank:false, unique:true
		abreviatura blank:true
	}

	String toString(){
		return "${nombre}"
	}
}
