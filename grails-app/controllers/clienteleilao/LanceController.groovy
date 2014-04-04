package clienteleilao



import static org.springframework.http.HttpStatus.*
import grails.converters.JSON
import grails.transaction.Transactional
import groovy.json.JsonSlurper

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
		
		String id = params["id"]
		
		maiorLance(id)
		
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
 * Se URL==null, crie um JSON com valor=0
 */
def maiorLance(def id){
	//http://projeto-leilao.herokuapp.com/lance/compra/id_produto
	
	def slurper = new JsonSlurper()
	def test = new URL("http://projeto-leilao.herokuapp.com/lance/compra/${id}").text
	
	def isNull = "${test}"
	
	if(isNull=="null"){
		def test2="""{"valor": 0}"""
		
		def maiorLance = slurper.parseText(test2)
		
		request.setAttribute('maior', maiorLance)
		
		respond "ok"
		
	}else{
	
	def maiorLance = slurper.parseText(test)

	request.setAttribute('maior', maiorLance)
	}
	
	respond "ok"
	
}
   
}

