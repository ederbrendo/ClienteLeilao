package clienteleilao



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

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


    def create() {
        respond new Usuario(params)
    }
	
	/**
	 * UsuarioController.logar() : Coloca o usu�rio em sess�o (Em Constru��o).
	 */
	def logar(){
	
		def usuario = new Usuario()
		
		usuario.cpfCnpj = params.cpfCnpj
		
		session.usuario = usuario
		
		flash.message = "Bem vindo ${session.usuario.cpfCnpj}!"
		
			redirect(uri: "/")
	}
	
	/**
	 * UsuarioController.logout() : Retira o usuario de sess�o.
	 */
	def logout() {
		
		def saida = "${session.usuario.cpfCnpj}"
		
		session.removeAttribute("usuario");
		session.invalidate()
		
		flash.message = "Usuario ${saida} saiu"
		
		redirect(uri: "/")
		
	}
	
	def compras() {
		
		
	}
	
	def lances() {
		
		
	}

   
}
