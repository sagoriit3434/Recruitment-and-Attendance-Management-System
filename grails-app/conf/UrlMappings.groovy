class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(controller:"recruitmentDetails", view:"viewAvailAbleJobs",  action: 'viewAvailAbleJobs')
//        "/"(view:"/index")
        "500"(view:'/error')
	}
}
