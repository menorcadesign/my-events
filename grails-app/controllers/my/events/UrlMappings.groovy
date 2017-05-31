package my.events

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?" {
            constraints {
                // apply constraints here
            }
        }

        "/"(controller: 'admin', action: 'index')
        "/page/$url"(controller: 'page', action: 'show')

        "500"(view: '/error')
        "404"(view: '/notFound')

    }

}
