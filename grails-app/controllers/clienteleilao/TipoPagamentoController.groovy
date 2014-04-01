package clienteleilao



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import groovy.json.JsonSlurper

@Transactional(readOnly = true)
class TipoPagamentoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]


    def show(TipoPagamento tipoPagamentoInstance) {
		
		def test = new URL("http://projeto-leilao.herokuapp.com/tipos_de_pagamento").text
		def slurper = new JsonSlurper()
		def result = slurper.parseText(test)

		request.setAttribute('result',result)

		respond result
    }

   
}
