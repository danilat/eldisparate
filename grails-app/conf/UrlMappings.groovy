class UrlMappings {

	static mappings = {
		"/autonomy/$action?/$id?"(controller:"autonomy")
		"/$id"(controller:"home", action: "show")
		"/"(controller:"home")
		"500"(view:'/error')
	}
}
