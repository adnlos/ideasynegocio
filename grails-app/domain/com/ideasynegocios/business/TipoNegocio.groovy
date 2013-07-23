package com.ideasynegocios.business

class TipoNegocio {
	
	String tipoNegocio
	String descripcion
	String color
	String rutaImagen
	String topImage
	String leftImage


	static constraints = {
		tipoNegocio blank:false, unique:true
		descripcion blank:true
		color nullable:true
		rutaImagen nullable:true
		topImage nullable:true
		leftImage nullable:true
	}

	String toString(){
		return "${tipoNegocio}"
	}
}
