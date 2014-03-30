package clienteleilao



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CategoriaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]


    def show(Categoria categoriaInstance) {
        respond categoriaInstance
    }

}
