<%@ page import="clienteleilao.Produto" %>



<div class="fieldcontain ${hasErrors(bean: produtoInstance, field: 'categoria', 'error')} ">
	<label for="categoria">
		<g:message code="produto.categoria.label" default="Categoria" />
		
	</label>
	<g:textField name="categoria" value="${produtoInstance?.categoria}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: produtoInstance, field: 'dataLeilaoInicial', 'error')} required">
	<label for="dataLeilaoInicial">
		<g:message code="produto.dataLeilaoInicial.label" default="Data Leilao Inicial" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataLeilaoInicial" precision="day"  value="${produtoInstance?.dataLeilaoInicial}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: produtoInstance, field: 'descricao', 'error')} ">
	<label for="descricao">
		<g:message code="produto.descricao.label" default="Descricao" />
		
	</label>
	<g:textField name="descricao" value="${produtoInstance?.descricao}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: produtoInstance, field: 'nome', 'error')} ">
	<label for="nome">
		<g:message code="produto.nome.label" default="Nome" />
		
	</label>
	<g:textField name="nome" value="${produtoInstance?.nome}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: produtoInstance, field: 'tempoLeilao', 'error')} required">
	<label for="tempoLeilao">
		<g:message code="produto.tempoLeilao.label" default="Tempo Leilao" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="tempoLeilao" precision="day"  value="${produtoInstance?.tempoLeilao}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: produtoInstance, field: 'tipoDePagamento', 'error')} ">
	<label for="tipoDePagamento">
		<g:message code="produto.tipoDePagamento.label" default="Tipo De Pagamento" />
		
	</label>
	<g:textField name="tipoDePagamento" value="${produtoInstance?.tipoDePagamento}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: produtoInstance, field: 'valor', 'error')} required">
	<label for="valor">
		<g:message code="produto.valor.label" default="Valor" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="valor" value="${fieldValue(bean: produtoInstance, field: 'valor')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: produtoInstance, field: 'valorInicial', 'error')} required">
	<label for="valorInicial">
		<g:message code="produto.valorInicial.label" default="Valor Inicial" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="valorInicial" value="${fieldValue(bean: produtoInstance, field: 'valorInicial')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: produtoInstance, field: 'valorMaximo', 'error')} required">
	<label for="valorMaximo">
		<g:message code="produto.valorMaximo.label" default="Valor Maximo" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="valorMaximo" value="${fieldValue(bean: produtoInstance, field: 'valorMaximo')}" required=""/>
</div>

