package com.ideasynegocios.business

class Suscriptor {
	
	String tipoReparto
	String medioSuscripcion 
	Date fechaSuscripcion
	Date fechaSuspension
	Date fechaBaja
	String estadoAdmin

	static constraints = {
		tipoReparto blank:false, inList: ["Domicilio", "Mail"]
		medioSuscripcion blank:false, inList: ["Telefono", "Mail", "Web", "Personal"]
		fechaSuscripcion blank:false
		fechaSuspension blank:true, nullable:true
		fechaBaja blank:true, nullable:true
		estadoAdmin blank:false, inList: ["Preactiva", "Activa", "Suspendida", "Baja"]
	}
}
