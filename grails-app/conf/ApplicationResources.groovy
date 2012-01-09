modules = {
    application {
        resource url: 'js/application.js'
    }

    compass {
    	resource url: [dir: '/compass/stylesheets', file: 'screen.css'],
    		attrs: [media: 'screen, projection']
    	resource url: [dir: '/compass/stylesheets', file: 'print.css'],
    		attrs: [media: 'print']
    	resource url: [dir: '/compass/stylesheets', file: 'ie.css'],
    		attrs: [media: 'screen'],
    		wrapper: { s -> "<!--[if IE]>$s<![endif]-->" }
    }

    codemirror {
    	resource url: [dir: '/codemirror/lib', file: 'codemirror.css'],
    		attrs: [media: 'screen']
		resource url: [dir: '/codemirror/lib', file: 'codemirror.js']
		resource url: [dir: '/codemirror/mode/groovy', file: 'groovy.js']
    }
}