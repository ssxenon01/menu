class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?(.${format})?"{}


        "/api/$controller/$id" {
            action = [GET: 'show', PUT: 'update', DELETE: 'delete']
        }


        "/api/$controller"(parseRequest:true) {
            action = [GET: 'list', POST: 'create']
        }

		"/"(view:"/index")
		"500"(view:'/error')
	}

}
