package clienteleilao




import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import groovy.json.JsonSlurper

@Transactional(readOnly = true)
class ProdutoController {

	static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	def slurper = new JsonSlurper()
	
	/**
	 * ProdutoController.index(): Recebe o JSON da URL e Converte para um LIST, em seguida
	 * envia para a página.
	 */
	def index() {


		def test = new URL("http://projeto-leilao.herokuapp.com/produtos").text
		def result = slurper.parseText(test)

		request.setAttribute('result',result)


		respond "ok"
	}


	/**
	 * ProdutoController.submitForm(): Utilizando o "Grails REST Plugin" para enviar as informações
	 * para o Servidor externo.
	 */
	def cadastrarProduto() {

		withHttp(uri: "http://projeto-leilao.herokuapp.com/produto") {
			def retorno = post(body:params)
		}

		flash.message = "Produto Cadastrado com Sucesso!"
		
		
		redirect(uri: "/")
	}

	def create(){
		
		categoria()
		pagamento()
		
		
		respond "ok"
	}
	
	def categoria(){
		
		def test = new URL("http://projeto-leilao.herokuapp.com/categorias").text
		def categoria = slurper.parseText(test)

		request.setAttribute('categorias',categoria)
		
		respond "ok"
	}
	
	def pagamento(){
		
		def test = new URL("http://projeto-leilao.herokuapp.com/tipos_de_pagamento").text
		def pagamento = slurper.parseText(test)

		request.setAttribute('pagamentos', pagamento)
		
		respond "ok"
	}
	
	
	
	
	
}
