package clienteleilao



import static org.springframework.http.HttpStatus.*

import org.apache.log4j.chainsaw.LoggingReceiver.Slurper;

import grails.converters.JSON
import grails.transaction.Transactional
import groovy.json.JsonSlurper

@Transactional(readOnly = true)
class CompraController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	
	/**
	 * CompraController.comprar(): Em Construção 
	 */
	def comprar() {
		withHttp(uri: "http://projeto-leilao.herokuapp.com/compra") {
			def retorno = post(body:params)
			println retorno
		}


		flash.message = "Compra efetuada!"
		
		
		redirect(uri: "/")
		
	}

    /**
     *  CompraController.create(): Método de criação da página de compra do Serviço escolhido,
     *   Recupera a id via GET e encaminha para a página de compra com os dados.
     */
    def create() {
        //respond new Compra(params)
		pagamento()
		
		String id = params["id"]
		
		def test = new URL("http://projeto-leilao.herokuapp.com/servicos").text
		def slurper = new JsonSlurper()
		def result = slurper.parseText(test)
		def cont = 0
		
		
		//for (i in result) {
		result.each{
			if(it._id==id){
				
				request.setAttribute('list',result[cont])
				
				respond result[cont]
			
			}
			cont++
		}
		
    }
	
	
	def pagamento(){
		
		def test = new URL("http://projeto-leilao.herokuapp.com/tipos_de_pagamento").text
		def slurper = new JsonSlurper()
		def pagamento = slurper.parseText(test)

		request.setAttribute('pagamentos', pagamento)
		
		
		respond pagamento
	}
	
}


	

