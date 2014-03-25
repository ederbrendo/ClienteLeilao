package clienteleilao
import clienteleilao.Servico
import static org.springframework.http.HttpStatus.*

import java.sql.ResultSet;
import java.util.Collections.EmptyMap;

import grails.converters.JSON;
import grails.transaction.Transactional
import groovy.json.JsonSlurper

@Transactional(readOnly = true)
class ServicoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

   def index(Integer max) {
	   def test = new URL("http://luizvarela666-public_sales.nodejitsu.com/services").text
	   def slurper = new JsonSlurper()
	   def result = slurper.parseText(test)
	   
	   request.setAttribute('result',result)
	   
	   respond result
	   
       
 }
	
   def listaServicos(){
	   
	   def test = new URL("http://luizvarela666-public_sales.nodejitsu.com/services").text
	   
	   //Retiro o [ inicial e FInal
	   //test = test.substring(1, test.length() -1)
   
	   
	   //println test
	   
	   //Conversao
	   def slurper = new JsonSlurper()
	   def result = slurper.parseText(test)
	   
   /*
	   //println result
	   def emptyMap = []
	   result.each{
		   emptyMap.add(it)
		   println "Nome: ${it.nome}"
		   println "Descrição: ${it.descricao}"
		   println "-------------------------------"
	   }
	   
	   println "${emptyMap}"*/
	   
	  response result
	   
   }
	
	
   def show(Servico servicoInstance) {
        respond servicoInstance
    }

	def create(){
		respond new Servico(params)
	}

    def submitForm() {
		def urlBase = "http://luizvarela666-public_sales.nodejitsu.com"
		def urlPath = "/services"
		def postData = params
		withHttp(uri: "http://www.luizvarela666-public_sales.nodejitsu.com/services") {
		   def retorno = post(body:params)
		   println retorno
		   
		}
		/*withHttp(uri:"http://luizvarela666-public_sales.nodejitsu.com"){
			def retorno = post(path:"/services"){
				headers.'User-Agent' = 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.154 Safari/537.36'
			}
			println retorno.stat
			println retorno
		}
		*/
		flash.message = "Serviço Cadastrado com Sucesso!"
		
		redirect(uri: "/")
		
		/*def url = new URL("http://luizvarela666-public_sales.nodejitsu.com/services")
		def http = new HTTPBuilder("http://luizvarela666-public_sales.nodejitsu.com/services")
		
		
        respond new Servico(params)*/
    }

    @Transactional
    def save(Servico servicoInstance) {
        if (servicoInstance == null) {
            notFound()
            return
        }

        if (servicoInstance.hasErrors()) {
            respond servicoInstance.errors, view:'create'
            return
        }

        servicoInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'servicoInstance.label', default: 'Servico'), servicoInstance.id])
                redirect servicoInstance
            }
            '*' { respond servicoInstance, [status: CREATED] }
        }
    }

    def edit(Servico servicoInstance) {
        respond servicoInstance
    }

    @Transactional
    def update(Servico servicoInstance) {
        if (servicoInstance == null) {
            notFound()
            return
        }

        if (servicoInstance.hasErrors()) {
            respond servicoInstance.errors, view:'edit'
            return
        }

        servicoInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Servico.label', default: 'Servico'), servicoInstance.id])
                redirect servicoInstance
            }
            '*'{ respond servicoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Servico servicoInstance) {

        if (servicoInstance == null) {
            notFound()
            return
        }

        servicoInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Servico.label', default: 'Servico'), servicoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'servicoInstance.label', default: 'Servico'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
