package clienteleilao



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import groovy.json.JsonSlurper

@Transactional(readOnly = true)
class CategoriaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]


    def show(Categoria categoriaInstance) {
       
		
		def test = new URL("http://projeto-leilao.herokuapp.com/categorias").text
		def slurper = new JsonSlurper()
		def result = slurper.parseText(test)

		request.setAttribute('result',result)

		respond result
    
    }

}
