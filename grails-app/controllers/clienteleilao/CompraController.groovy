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
	 * CompraController.comprar(): Em Constru��o 
	 */
	def comprar() {
		
		
		def test = params
		
		println test
		
		render test as JSON
	}

    /**
     *  CompraController.create(): M�todo de cria��o da p�gina de compra do Servi�o escolhido,
     *   Recupera a id via GET e encaminha para a p�gina de compra com os dados.
     */
    def create() {
        //respond new Compra(params)
		
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
	
	/**
	 * Mostrar Compras do Usuario
	 */
	def show(){
		
		
	}
}


	

