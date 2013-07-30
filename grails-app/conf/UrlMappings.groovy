class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		"/$id?"(controller: 'negocio', action: 'infoNegocio')


		"/" (controller:"inicio", action:"index")
		"500"(view:'/error')
	}
}
