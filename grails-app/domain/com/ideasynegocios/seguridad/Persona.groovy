package com.ideasynegocios.seguridad
import com.ideasynegocios.general.Colonia

class Persona {
	String nombre
	String apellidoPaterno
	String apellidoMaterno
	String sexo
	Colonia colonia
	String calle
	String codigoPostal
	String noExt
	String noInt
	String referencia
	String telefono
	String email

	static constraints = {
		nombre blank:false
		apellidoPaterno blank:false
		apellidoMaterno blank:true, nullable:true
		sexo blank:false, inList: ["Femenino", "Masculino"]
		calle blank:true, nullable:true
		colonia nullable:true
		codigoPostal blank:true, nullable:true
		noExt blank:true, nullable:true
		noInt blank:true, nullable:true
		referencia blank:true, nullable:true
		telefono blank:true, nullable:true
		email email:true, blank:true, nullable:true
	}

	String toString(){
		return "${nombre} ${apellidoPaterno}"
	}
}
