package com.ideasynegocios.business

class EspacioPublicitario {
	static belongsTo = [publicacion: Publicacion]

	Negocio negocio
	Paquete paquete
	Date fechaContacto
	String fase
	double precioFinal
	String rutaRevista
	String rutaBanner
	String rutaPreview

	static hasMany = [pagos: PagoEspacioPublicitario]

	static constraints = {
		negocio nullable:false, blank:false
		paquete nullable:false, blank:false
		precioFinal blank:false
		fase blank:false, inList: ["Confirmado", "NoPublicado", "Autorizado", "Publicado"]
		rutaRevista blank:true, nullable:true
		rutaBanner blank:true, nullable:true
		rutaPreview blank:true, nullable:true
	}

	String toString(){
		return "${negocio} - \$ ${paquete}"
	}
}
