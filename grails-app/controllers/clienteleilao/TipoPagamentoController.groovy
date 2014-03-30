package clienteleilao



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TipoPagamentoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]


    def show(TipoPagamento tipoPagamentoInstance) {
        respond tipoPagamentoInstance
    }

   
}
