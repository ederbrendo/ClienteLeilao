package clienteleilao



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import groovy.json.JsonSlurper

@Transactional(readOnly = true)
class ProdutoController {

	static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	def index(Integer max) {


		def test = new URL("http://luizvarela666-public_sales.nodejitsu.com/products").text
		def slurper = new JsonSlurper()
		def result = slurper.parseText(test)

		request.setAttribute('result',result)

		respond result
	}

	def show(Produto produtoInstance) {
		respond produtoInstance
	}

	def create() {
		respond new Produto(params)
	}

	def submitForm() {
		def urlBase = "http://luizvarela666-public_sales.nodejitsu.com"
		def urlPath = "/products"
		def postData = params
		withHttp(uri: "http://www.luizvarela666-public_sales.nodejitsu.com/products") {
			def retorno = post(body:params)
			println retorno
		}

		flash.message = "Produto Cadastrado com Sucesso!"

		redirect(uri: "/")
	}

	@Transactional
	def save(Produto produtoInstance) {
		if (produtoInstance == null) {
			notFound()
			return
		}

		if (produtoInstance.hasErrors()) {
			respond produtoInstance.errors, view:'create'
			return
		}

		produtoInstance.save flush:true

		request.withFormat {
			form {
				flash.message = message(code: 'default.created.message', args: [
					message(code: 'produtoInstance.label', default: 'Produto'),
					produtoInstance.id
				])
				redirect produtoInstance
			}
			'*' { respond produtoInstance, [status: CREATED] }
		}
	}

	def edit(Produto produtoInstance) {
		respond produtoInstance
	}

	@Transactional
	def update(Produto produtoInstance) {
		if (produtoInstance == null) {
			notFound()
			return
		}

		if (produtoInstance.hasErrors()) {
			respond produtoInstance.errors, view:'edit'
			return
		}

		produtoInstance.save flush:true

		request.withFormat {
			form {
				flash.message = message(code: 'default.updated.message', args: [
					message(code: 'Produto.label', default: 'Produto'),
					produtoInstance.id
				])
				redirect produtoInstance
			}
			'*'{ respond produtoInstance, [status: OK] }
		}
	}

	@Transactional
	def delete(Produto produtoInstance) {

		if (produtoInstance == null) {
			notFound()
			return
		}

		produtoInstance.delete flush:true

		request.withFormat {
			form {
				flash.message = message(code: 'default.deleted.message', args: [
					message(code: 'Produto.label', default: 'Produto'),
					produtoInstance.id
				])
				redirect action:"index", method:"GET"
			}
			'*'{ render status: NO_CONTENT }
		}
	}

	protected void notFound() {
		request.withFormat {
			form {
				flash.message = message(code: 'default.not.found.message', args: [
					message(code: 'produtoInstance.label', default: 'Produto'),
					params.id
				])
				redirect action: "index", method: "GET"
			}
			'*'{ render status: NOT_FOUND }
		}
	}
}
