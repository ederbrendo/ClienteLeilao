package clienteleilao



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import groovy.json.JsonSlurper

/**
 * @author Ederbrendo
 *
 */
/**
 * @author Ederbrendo
 *
 */
/**
 * @author Ederbrendo
 *
 */
@Transactional(readOnly = true)
class UsuarioController {

	static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
	def slurper = new JsonSlurper()

	def create() {
		respond new Usuario(params)
	}

	def submitFormUsuario() {
		println params

		withHttp(uri: "http://projeto-leilao.herokuapp.com/usuario") {
			def retorno = post(body:params)
			println retorno
		}
		flash.message = "Usuario Cadastrado com Sucesso!"

		redirect(uri: "/")
	}

	/**
	 * UsuarioController.logar() : Coloca o usuário em sessão (Em Construção).
	 */
	def logar(){

		String cpf = params.cpfCnpj

		def test = new URL("http://projeto-leilao.herokuapp.com/usuarios").text
		def result = slurper.parseText(test)
		def cont = 0

		//for (i in result) {
		result.each{
			if(it.cpfCnpj==cpf){
				def usuario = new Usuario()

				usuario.cpfCnpj = params.cpfCnpj
				usuario.nome = it.nome
				usuario.endereco = it.endereco
				usuario.email = it.email
				usuario.id = it._id

				session.usuario = usuario

				flash.message = "Bem vindo ${it.nome}!"


			}
		}


		redirect(uri: "/")

	}

	/**
	 * UsuarioController.logout() : Retira o usuario de sessão.
	 */
	def logout() {

		def saida = "${session.usuario.nome}"

		session.removeAttribute("usuario");
		session.invalidate()

		flash.message = "Usuario ${saida} saiu"

		redirect(uri: "/")

	}

	def compras() {
		//http://projeto-leilao.herokuapp.com/servico/cpfCnpjs
		def test = new URL("http://projeto-leilao.herokuapp.com/compra/${session.usuario.cpfCnpj}").text
		def compras = slurper.parseText(test)

		request.setAttribute('compras',compras)

		respond "ok"


	}

	def lances() {

		def test = new URL("http://projeto-leilao.herokuapp.com/lance/${session.usuario.cpfCnpj}").text
		def lances = slurper.parseText(test)


		request.setAttribute('lances',lances)

		respond "ok"

	}

	def vendas(){
		produtos()
		servicos()

		respond "ok"


	}

	def produtos(){

		def test = new URL("http://projeto-leilao.herokuapp.com/produto/${session.usuario.cpfCnpj}").text
		def produtos = slurper.parseText(test)


		request.setAttribute('produtos',produtos)

		respond "ok"


	}

	def servicos(){

		def test = new URL("http://projeto-leilao.herokuapp.com/servico/${session.usuario.cpfCnpj}").text
		def servicos = slurper.parseText(test)


		request.setAttribute('servicos',servicos)

		respond "ok"


	}




}
