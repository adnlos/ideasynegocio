package com.ideasynegocios.business

class PagoEspacioPublicitario {

	static belongsTo = [espacioPublicitario: EspacioPublicitario]

	String fase
	double total
	Date date
	String notas

	static constraints = {
		fase blank:false, inList: ["Confirmado", "Planeado"]
		total blank:false
		date nullable:false
		notas blank:true
	}

	String toString(){
		return "${fase} - \$ ${total}"
	}
}
