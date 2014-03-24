<%@ page import="clienteleilao.Servico" %>



<div class="fieldcontain ${hasErrors(bean: servicoInstance, field: 'categoria', 'error')} ">
	<label for="categoria">
		<g:message code="servico.categoria.label" default="Categoria" />
		
	</label>
	<g:textField name="categoria" value="${servicoInstance?.categoria}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: servicoInstance, field: 'descricao', 'error')} ">
	<label for="descricao">
		<g:message code="servico.descricao.label" default="Descricao" />
		
	</label>
	<g:textField name="descricao" value="${servicoInstance?.descricao}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: servicoInstance, field: 'duracaoDias', 'error')} required">
	<label for="duracaoDias">
		<g:message code="servico.duracaoDias.label" default="Duracao Dias" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="duracaoDias" type="number" value="${servicoInstance.duracaoDias}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: servicoInstance, field: 'nome', 'error')} ">
	<label for="nome">
		<g:message code="servico.nome.label" default="Nome" />
		
	</label>
	<g:textField name="nome" value="${servicoInstance?.nome}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: servicoInstance, field: 'periodo', 'error')} required">
	<label for="periodo">
		<g:message code="servico.periodo.label" default="Periodo" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="periodo" type="number" value="${servicoInstance.periodo}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: servicoInstance, field: 'tempoDeServico', 'error')} required">
	<label for="tempoDeServico">
		<g:message code="servico.tempoDeServico.label" default="Tempo De Servico" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="tempoDeServico" precision="day"  value="${servicoInstance?.tempoDeServico}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: servicoInstance, field: 'tipoDePagamento', 'error')} ">
	<label for="tipoDePagamento">
		<g:message code="servico.tipoDePagamento.label" default="Tipo De Pagamento" />
		
	</label>
	<g:textField name="tipoDePagamento" value="${servicoInstance?.tipoDePagamento}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: servicoInstance, field: 'valor', 'error')} required">
	<label for="valor">
		<g:message code="servico.valor.label" default="Valor" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="valor" value="${fieldValue(bean: servicoInstance, field: 'valor')}" required=""/>
</div>

