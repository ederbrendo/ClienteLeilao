
<%@ page import="clienteleilao.Lance" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'lance.label', default: 'Lance')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-lance" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-lance" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list lance">
			
				<g:if test="${lanceInstance?.categoria}">
				<li class="fieldcontain">
					<span id="categoria-label" class="property-label"><g:message code="lance.categoria.label" default="Categoria" /></span>
					
						<span class="property-value" aria-labelledby="categoria-label"><g:fieldValue bean="${lanceInstance}" field="categoria"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${lanceInstance?.dataHora}">
				<li class="fieldcontain">
					<span id="dataHora-label" class="property-label"><g:message code="lance.dataHora.label" default="Data Hora" /></span>
					
						<span class="property-value" aria-labelledby="dataHora-label"><g:formatDate date="${lanceInstance?.dataHora}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${lanceInstance?.dataLeilaoInicial}">
				<li class="fieldcontain">
					<span id="dataLeilaoInicial-label" class="property-label"><g:message code="lance.dataLeilaoInicial.label" default="Data Leilao Inicial" /></span>
					
						<span class="property-value" aria-labelledby="dataLeilaoInicial-label"><g:formatDate date="${lanceInstance?.dataLeilaoInicial}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${lanceInstance?.descricao}">
				<li class="fieldcontain">
					<span id="descricao-label" class="property-label"><g:message code="lance.descricao.label" default="Descricao" /></span>
					
						<span class="property-value" aria-labelledby="descricao-label"><g:fieldValue bean="${lanceInstance}" field="descricao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${lanceInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="lance.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${lanceInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${lanceInstance?.tempoLeilao}">
				<li class="fieldcontain">
					<span id="tempoLeilao-label" class="property-label"><g:message code="lance.tempoLeilao.label" default="Tempo Leilao" /></span>
					
						<span class="property-value" aria-labelledby="tempoLeilao-label"><g:formatDate date="${lanceInstance?.tempoLeilao}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${lanceInstance?.tipoDePagamento}">
				<li class="fieldcontain">
					<span id="tipoDePagamento-label" class="property-label"><g:message code="lance.tipoDePagamento.label" default="Tipo De Pagamento" /></span>
					
						<span class="property-value" aria-labelledby="tipoDePagamento-label"><g:fieldValue bean="${lanceInstance}" field="tipoDePagamento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${lanceInstance?.valor}">
				<li class="fieldcontain">
					<span id="valor-label" class="property-label"><g:message code="lance.valor.label" default="Valor" /></span>
					
						<span class="property-value" aria-labelledby="valor-label"><g:fieldValue bean="${lanceInstance}" field="valor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${lanceInstance?.valorInicial}">
				<li class="fieldcontain">
					<span id="valorInicial-label" class="property-label"><g:message code="lance.valorInicial.label" default="Valor Inicial" /></span>
					
						<span class="property-value" aria-labelledby="valorInicial-label"><g:fieldValue bean="${lanceInstance}" field="valorInicial"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${lanceInstance?.valorMaximo}">
				<li class="fieldcontain">
					<span id="valorMaximo-label" class="property-label"><g:message code="lance.valorMaximo.label" default="Valor Maximo" /></span>
					
						<span class="property-value" aria-labelledby="valorMaximo-label"><g:fieldValue bean="${lanceInstance}" field="valorMaximo"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:lanceInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${lanceInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
