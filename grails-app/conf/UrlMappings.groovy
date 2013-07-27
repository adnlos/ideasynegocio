class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

        "/"{
            controller= 'inicio' 
            action= 'index'
        }

		"/$id?"{
            controller= 'negocio' 
            action= 'infoNegocio'
        }


		//"/"(view:"/index")
		"500"(view:'/error')
	}
}
