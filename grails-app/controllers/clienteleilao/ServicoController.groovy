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
	def slurper = new JsonSlurper()
	
	/**
	 * ServicoController.index(): Recebe o JSON da URL e Converte para uma LIST, em seguida
	 * envia para a página.
	 */
	def index() {
		def test = new URL("http://projeto-leilao.herokuapp.com/servicos").text
		def result = slurper.parseText(test)

		request.setAttribute('result',result)

		respond "ok"
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

	/**
	 * ServicoController.submitForm(): Utiliza o "Grails REST Plugin" para enviar as informações
	 * para o Servidor externo.
	 */
	def submitForm() {
		
		withHttp(uri: "http://projeto-leilao.herokuapp.com/servico") {
			def retorno = post(body:params)
		}
		flash.message = "Serviço Cadastrado com Sucesso!"

		redirect(uri: "/")
	}

	
}
