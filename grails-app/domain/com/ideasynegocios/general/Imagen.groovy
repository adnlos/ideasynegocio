package com.ideasynegocios.general

class Imagen implements Serializable {
	String nombre  
	String tipoContenido  
	Long tamano  
	byte[] archivo  

	static constraints = {      
		nombre maxSize:64, nullable:true      
		tipoContenido maxSize:64,nullable:true      
		tamano nullable:true
		archivo nullable:true, maxSize:1024*1024*5  
	}  

	String toString(){
		return "${Imagen: nombre}"
	}
}
