package clienteleilao



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import groovy.json.JsonSlurper

@Transactional(readOnly = true)
class TipoPagamentoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
	def slurper = new JsonSlurper()

    def show() {
		
		def test = new URL("http://projeto-leilao.herokuapp.com/tipos_de_pagamento").text
		def result = slurper.parseText(test)

		request.setAttribute('result',result)

		respond "ok"
    }

   
}
