package com.ideasynegocios.business
import com.ideasynegocios.general.Imagen

class ImagenNegocio extends Imagen{

	static belongsTo = [negocio: Negocio]

    static constraints = {

    }
}
