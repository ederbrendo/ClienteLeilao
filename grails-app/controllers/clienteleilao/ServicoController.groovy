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
		def test = new URL("http://projeto-leilao.herokuapp.com/servicos").text
		def slurper = new JsonSlurper()
		def result = slurper.parseText(test)

		request.setAttribute('result',result)

		respond result
	}


	def show(Servico servicoInstance) {
		respond servicoInstance
	}

	def create(){
		categoria()
		pagamento()
		
		respond new Servico(params)
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

	/**
	 * ServicoController.submitForm(): Utiliza o "Grails REST Plugin" para enviar as informações
	 * para o Servidor externo.
	 */
	def submitForm() {
		
		withHttp(uri: "http://projeto-leilao.herokuapp.com/servico") {
			def retorno = post(body:params)
			println retorno
		}
		flash.message = "Serviço Cadastrado com Sucesso!"

		redirect(uri: "/")
	}

	
}
