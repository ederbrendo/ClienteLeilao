package clienteleilao



import static org.springframework.http.HttpStatus.*
import grails.converters.JSON
import grails.transaction.Transactional
import groovy.json.JsonSlurper

@Transactional(readOnly = true)
class LanceController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Lance.list(params), model:[lanceInstanceCount: Lance.count()]
    }


   def create() {
        //respond new Compra(params)
		
		String nome = params["nome"]
		
		def test = new URL("http://luizvarela666-public-sales.jit.su/products").text
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

   
   def lance() {
	   
	   def test = params
	   
	   println test
	   
	   render test as JSON
   }

    }

