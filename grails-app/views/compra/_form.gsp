<%@ page import="clienteleilao.Compra" %>



<div class="fieldcontain ${hasErrors(bean: compraInstance, field: 'categoria', 'error')} ">
	<label for="categoria">
		<g:message code="compra.categoria.label" default="Categoria" />
		
	</label>
	<g:textField name="categoria" value="${compraInstance?.categoria}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: compraInstance, field: 'data', 'error')} required">
	<label for="data">
		<g:message code="compra.data.label" default="Data" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="data" precision="day"  value="${compraInstance?.data}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: compraInstance, field: 'descricao', 'error')} ">
	<label for="descricao">
		<g:message code="compra.descricao.label" default="Descricao" />
		
	</label>
	<g:textField name="descricao" value="${compraInstance?.descricao}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: compraInstance, field: 'duracaoDias', 'error')} required">
	<label for="duracaoDias">
		<g:message code="compra.duracaoDias.label" default="Duracao Dias" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="duracaoDias" type="number" value="${compraInstance.duracaoDias}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: compraInstance, field: 'nome', 'error')} ">
	<label for="nome">
		<g:message code="compra.nome.label" default="Nome" />
		
	</label>
	<g:textField name="nome" value="${compraInstance?.nome}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: compraInstance, field: 'periodo', 'error')} required">
	<label for="periodo">
		<g:message code="compra.periodo.label" default="Periodo" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="periodo" type="number" value="${compraInstance.periodo}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: compraInstance, field: 'tempoDeServico', 'error')} required">
	<label for="tempoDeServico">
		<g:message code="compra.tempoDeServico.label" default="Tempo De Servico" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="tempoDeServico" precision="day"  value="${compraInstance?.tempoDeServico}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: compraInstance, field: 'tipoDePagamento', 'error')} ">
	<label for="tipoDePagamento">
		<g:message code="compra.tipoDePagamento.label" default="Tipo De Pagamento" />
		
	</label>
	<g:textField name="tipoDePagamento" value="${compraInstance?.tipoDePagamento}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: compraInstance, field: 'tipoEntrega', 'error')} ">
	<label for="tipoEntrega">
		<g:message code="compra.tipoEntrega.label" default="Tipo Entrega" />
		
	</label>
	<g:textField name="tipoEntrega" value="${compraInstance?.tipoEntrega}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: compraInstance, field: 'valor', 'error')} required">
	<label for="valor">
		<g:message code="compra.valor.label" default="Valor" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="valor" value="${fieldValue(bean: compraInstance, field: 'valor')}" required=""/>
</div>

