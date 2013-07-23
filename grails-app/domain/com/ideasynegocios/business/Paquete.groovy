package com.ideasynegocios.business

class Paquete {
	
	String nombre
	String descripcion
	double precioReferencia
	int prioridad

	static constraints = {
		nombre blank:false, unique:true
		descripcion blank:false
		prioridad blank:false, unique:true
	}

	String toString(){
		return "${nombre} - \$ ${precioReferencia}"
	}
}
