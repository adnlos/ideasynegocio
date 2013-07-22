package com.ideasynegocios.general

class Pais {

	String nombre
	String nombreCompleto

	static hasMany = [estados: Estado] 

	static constraints = {
		nombre blank:false, unique:true
		nombreCompleto blank:true
	}

	String toString(){
		return "${nombre}"
	}
}
