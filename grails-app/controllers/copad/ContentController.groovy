package copad

import groovy.xml.MarkupBuilder


class ContentController {

    def index() { }

    /**
     * Show Contents
     */
    def show() {
    	def code = Code.get(params.id)

    	[code: code]
    }

    /**
     * Execute Program (Using Java Web Start)
     */
    def execute() {

    	def writer = new StringWriter()

    	writer << '<?xml version="1.0" encoding="UTF-8"?>\n'

		def xml = new MarkupBuilder(writer)
		xml.doubleQuotes = true
		xml.jnlp(spec: '1.0+', codebase: 'http://s3.copad.cc/lib') {
			information {
				title ('CoPad Scripting')
				vendor ('StrongSoft')
				homepage (href: 'http://copad.cc/')
				description ('CoPad Scripting Copyright (C) 2011')
			}
			security {
 				'all-permissions' ()
 			}
 			resources {
	 			j2se (version: "1.6+", href: "http://java.sun.com/products/autodl/j2se")
				jar (href: "copad-engine-0.0.1.jar")

				property (name: "core.script.type", value: "groovy")
				property (name: "core.script.url", value: "http://copad.cc/src/3")
				property (name: "core.engine.type", value: "groovy")
				property (name: "core.engine.url", value: "http://copad.cc/src/1")
				property (name: "core.callback.url", value: "http://copad.cc/api/callback/10/8/2/620ee082abf574f2ce5d13af01af9374")
			}
			'application-desc' ('main-class': "com.lyhdev.copad.ScriptLoader")
		}

		def output = writer.toString()
		writer.close()

		render text: output,
			contentType: 'text/xml',
			encoding: 'UTF-8'
    }
}
