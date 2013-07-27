package com.ideasynegocios.general

class Imagen implements Serializable {
	String nombre  
	String tipoContenido  
	Long tamano  
	byte[] archivo  

	static constraints = {      
		nombre nullable:true      
		tipoContenido nullable:true      
		tamano nullable:true
		archivo nullable:true, maxSize:1024*1024*5  
	}  


	String toString(){
		return "${Imagen: nombre}"
	}
}
