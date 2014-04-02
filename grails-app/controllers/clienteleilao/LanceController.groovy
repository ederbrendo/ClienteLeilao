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
		
		String id = params["id"]
		
		def test = new URL("http://projeto-leilao.herokuapp.com/produtos").text
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
 * Efetiva Lance
 */
def lance() {
	   
	
	withHttp(uri: "http://projeto-leilao.herokuapp.com/lance") {
		def retorno = post(body:params)
		println retorno
		flash.message = "${retorno}"
	}
	
	
	
	redirect(uri: "/")

	
   }
   
   /**
 *  Mostrar os Lances do usuario
 */
def show(){
	   

    }
   
}

