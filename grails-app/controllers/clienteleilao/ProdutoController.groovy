package clienteleilao



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import groovy.json.JsonSlurper

@Transactional(readOnly = true)
class ProdutoController {

	static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	/**
	 * ProdutoController.index(): Recebe o JSON da URL e Converte para um HASHMAP, em seguida
	 * envia para a página.
	 */
	def index() {


		def test = new URL("http://projeto-leilao.herokuapp.com/produtos").text
		def slurper = new JsonSlurper()
		def result = slurper.parseText(test)

		request.setAttribute('result',result)

		println result

		respond result
	}


	/**
	 * ProdutoController.submitForm(): Utilizando o "Grails REST Plugin" para enviar as informações
	 * para o Servidor externo.
	 */
	def submitForm() {

		withHttp(uri: "http://projeto-leilao.herokuapp.com/produto") {
			def retorno = post(body:params)
			println retorno
		}


		flash.message = "Produto Cadastrado com Sucesso!"
		
		
		redirect(uri: "/")
	}

	def create(){
		categoria()
		pagamento()
		
		
		respond new Produto(params)
	}
	
	def categoria(){
		
		def test = new URL("http://projeto-leilao.herokuapp.com/categorias").text
		def slurper = new JsonSlurper()
		def categoria = slurper.parseText(test)

		request.setAttribute('categorias',categoria)
		
		respond categoria
	}
	
	def pagamento(){
		
		def test = new URL("http://projeto-leilao.herokuapp.com/tipos_de_pagamento").text
		def slurper = new JsonSlurper()
		def pagamento = slurper.parseText(test)

		request.setAttribute('pagamentos', pagamento)
		
		

		respond pagamento
	}
	
	
	
	
	
}
