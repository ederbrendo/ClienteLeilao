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

	/**
	 * ServicoController.index(): Recebe o JSON da URL e Converte para um HASHMAP, em seguida
	 * envia para a página.
	 */
	def index() {
		def test = new URL("http://luizvarela666-public-sales.jit.su/services").text
		def slurper = new JsonSlurper()
		def result = slurper.parseText(test)

		request.setAttribute('result',result)

		respond result
	}


	def show(Servico servicoInstance) {
		respond servicoInstance
	}

	def create(){
		respond new Servico(params)
	}

	/**
	 * ServicoController.submitForm(): Utiliza o "Grails REST Plugin" para enviar as informações
	 * para o Servidor externo.
	 */
	def submitForm() {
		
		withHttp(uri: "http://luizvarela666-public-sales.jit.su/services") {
			def retorno = post(body:params)
			println retorno
		}
		flash.message = "Serviço Cadastrado com Sucesso!"

		redirect(uri: "/")
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
				flash.message = message(code: 'default.created.message', args: [
					message(code: 'servicoInstance.label', default: 'Servico'),
					servicoInstance.id
				])
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
				flash.message = message(code: 'default.updated.message', args: [
					message(code: 'Servico.label', default: 'Servico'),
					servicoInstance.id
				])
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
				flash.message = message(code: 'default.deleted.message', args: [
					message(code: 'Servico.label', default: 'Servico'),
					servicoInstance.id
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
					message(code: 'servicoInstance.label', default: 'Servico'),
					params.id
				])
				redirect action: "index", method: "GET"
			}
			'*'{ render status: NOT_FOUND }
		}
	}
}
