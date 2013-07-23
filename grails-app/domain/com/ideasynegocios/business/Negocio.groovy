package com.ideasynegocios.business
import com.ideasynegocios.general.*
import com.ideasynegocios.seguridad.*

class Negocio {

	String nombre
	String nombreFormal
	TipoNegocio tipoNegocio
	Colonia colonia
	String calle
	String noExterior
	String noInterior
	String codigoPostal
	String referencia
	String telefono
	String email
	String latitud
	String longitud
	Date fechaContacto
	Date fechaInicioRelacion
	Date fechaSuspension
	Date fechaBaja
	ContactoNegocio contactoNegocio
	UserSec personaRecluto
	String estadoAdmin
	String facebook
	
	String getDireccionCompleta() { 
		return "${calle}, ${noExterior} ${noInterior!=null? noInterior : ''}, \
		${colonia}, ${colonia?.municipio}, ${colonia?.municipio?.estado}, \
		${codigoPostal!=null? codigoPostal: ''}" 
	}
	static transients = ['direccionCompleta']

	static constraints = {
		nombre blank:false
		nombreFormal blank:true, nullable:true
		tipoNegocio blank:false
		colonia blank:false
		calle blank:false
		noExterior blank:false
		noInterior blank:true, nullable:true
		codigoPostal blank:true, nullable:true
		referencia blank:true, nullable:true
		telefono blank:true
		email blank:true, email:true, nullable:true
		latitud blank:true, nullable:true
		longitud blank:true, nullable:true
		fechaContacto blank:false
		fechaInicioRelacion blank:true, nullable:true
		fechaSuspension blank:true, nullable:true
		fechaBaja blank:true, nullable:true
		estadoAdmin blank:false, inList: ["Contacto", "Activa", "Suspendida", "Baja"]
		contactoNegocio blank:true, nullable:true
		personaRecluto blank:true, nullable:true
		facebook blank:true, nullable:true
	}

	String toString(){
		return "${nombre}"
	}
}
