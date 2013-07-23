package com.ideasynegocios.business
import com.ideasynegocios.general.*

class Publicacion {
	
	int numeroPublicacion
	String nombre
	String descripcion
	double tiraje
	Date fechaImpresion
	Date fechaPublicacion
	Date fechaReparto
	String fase

	static hasMany = [municipiosAlcance: Municipio, espacios: EspacioPublicitario] 

	static constraints = {
		numeroPublicacion blank:false
		nombre blank:false
		descripcion blank:true
		tiraje blank:false
		fechaImpresion blank:true
		fechaPublicacion blank:true
		fechaReparto blank:true
		fase blank:false, inList: ["Actual", "Cerrada"]
	}

	String toString(){
		return "${numeroPublicacion} ${nombre}"
	}
}
