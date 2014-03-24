class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"/index")
        "500"(view:'/error')
		"/cadastroItem"(view:'/cadastroItem')
		"/listar" (view:"/servicos",controller: 'Servico', action: 'listaServicos()')
	}
}
