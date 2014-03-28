<%@ page import="clienteleilao.Lance" %>



<div class="fieldcontain ${hasErrors(bean: lanceInstance, field: 'categoria', 'error')} ">
	<label for="categoria">
		<g:message code="lance.categoria.label" default="Categoria" />
		
	</label>
	<g:textField name="categoria" value="${lanceInstance?.categoria}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: lanceInstance, field: 'dataHora', 'error')} required">
	<label for="dataHora">
		<g:message code="lance.dataHora.label" default="Data Hora" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataHora" precision="day"  value="${lanceInstance?.dataHora}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: lanceInstance, field: 'dataLeilaoInicial', 'error')} required">
	<label for="dataLeilaoInicial">
		<g:message code="lance.dataLeilaoInicial.label" default="Data Leilao Inicial" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataLeilaoInicial" precision="day"  value="${lanceInstance?.dataLeilaoInicial}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: lanceInstance, field: 'descricao', 'error')} ">
	<label for="descricao">
		<g:message code="lance.descricao.label" default="Descricao" />
		
	</label>
	<g:textField name="descricao" value="${lanceInstance?.descricao}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: lanceInstance, field: 'nome', 'error')} ">
	<label for="nome">
		<g:message code="lance.nome.label" default="Nome" />
		
	</label>
	<g:textField name="nome" value="${lanceInstance?.nome}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: lanceInstance, field: 'tempoLeilao', 'error')} required">
	<label for="tempoLeilao">
		<g:message code="lance.tempoLeilao.label" default="Tempo Leilao" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="tempoLeilao" precision="day"  value="${lanceInstance?.tempoLeilao}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: lanceInstance, field: 'tipoDePagamento', 'error')} ">
	<label for="tipoDePagamento">
		<g:message code="lance.tipoDePagamento.label" default="Tipo De Pagamento" />
		
	</label>
	<g:textField name="tipoDePagamento" value="${lanceInstance?.tipoDePagamento}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: lanceInstance, field: 'valor', 'error')} required">
	<label for="valor">
		<g:message code="lance.valor.label" default="Valor" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="valor" value="${fieldValue(bean: lanceInstance, field: 'valor')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: lanceInstance, field: 'valorInicial', 'error')} required">
	<label for="valorInicial">
		<g:message code="lance.valorInicial.label" default="Valor Inicial" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="valorInicial" value="${fieldValue(bean: lanceInstance, field: 'valorInicial')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: lanceInstance, field: 'valorMaximo', 'error')} required">
	<label for="valorMaximo">
		<g:message code="lance.valorMaximo.label" default="Valor Maximo" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="valorMaximo" value="${fieldValue(bean: lanceInstance, field: 'valorMaximo')}" required=""/>
</div>

