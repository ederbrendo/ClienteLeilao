package clienteleilao



import static org.springframework.http.HttpStatus.*

import org.apache.log4j.chainsaw.LoggingReceiver.Slurper;

import grails.converters.JSON
import grails.transaction.Transactional
import groovy.json.JsonSlurper

@Transactional(readOnly = true)
class CompraController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Compra.list(params), model:[compraInstanceCount: Compra.count()]
    }

    def show(Compra compraInstance) {
        respond compraInstance
    }
	
	/**
	 * CompraController.comprar(): Em Construção 
	 */
	def comprar() {
		
		def test = params
		
		println test
		
		render test as JSON
	}

    /**
     *  CompraController.create(): Método de criação da página de compra do Serviço escolhido,
     *   Recupera a id via GET e encaminha para a página de compra com os dados.
     */
    def create() {
        //respond new Compra(params)
		
		String nome = params["nome"]
		
		def test = new URL("http://luizvarela666-public-sales.jit.su/services").text
		def slurper = new JsonSlurper()
		def result = slurper.parseText(test)
		def cont = 0
		
		
		//for (i in result) {
		result.each{
			if(it.nome==nome){
				
				request.setAttribute('list',result[cont])
				
				respond result[cont]
			
			}
			cont++
		}
		
    }
	
	

    @Transactional
    def save(Compra compraInstance) {
        if (compraInstance == null) {
            notFound()
            return
        }

        if (compraInstance.hasErrors()) {
            respond compraInstance.errors, view:'create'
            return
        }

        compraInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'compraInstance.label', default: 'Compra'), compraInstance.id])
                redirect compraInstance
            }
            '*' { respond compraInstance, [status: CREATED] }
        }
    }

    def edit(Compra compraInstance) {
        respond compraInstance
    }

    @Transactional
    def update(Compra compraInstance) {
        if (compraInstance == null) {
            notFound()
            return
        }

        if (compraInstance.hasErrors()) {
            respond compraInstance.errors, view:'edit'
            return
        }

        compraInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Compra.label', default: 'Compra'), compraInstance.id])
                redirect compraInstance
            }
            '*'{ respond compraInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Compra compraInstance) {

        if (compraInstance == null) {
            notFound()
            return
        }

        compraInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Compra.label', default: 'Compra'), compraInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'compraInstance.label', default: 'Compra'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
