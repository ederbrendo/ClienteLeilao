package clienteleilao



import static org.springframework.http.HttpStatus.*
import grails.converters.JSON
import grails.transaction.Transactional
import groovy.json.JsonSlurper

/**
 * @author Eder Brendo
 *
 */
/**
 * @author Eder Brendo
 *
 */
@Transactional(readOnly = true)
class LanceController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

  
   /**
 * Envia as informações sobre o lance escolhido para a pagina
 */
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

   
   /**
 * Efetiva Lance
 */
def lance() {
	   
	   def test = params
	   
	   println test
	   
	   render test as JSON
   }
   
   /**
 *  Mostrar os Lances do usuario
 */
def show(){
	   

    }
   
}

