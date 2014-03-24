
<%@ page import="clienteleilao.Produto" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'produto.label', default: 'Produto')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-produto" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-produto" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list produto">
			
				<g:if test="${produtoInstance?.categoria}">
				<li class="fieldcontain">
					<span id="categoria-label" class="property-label"><g:message code="produto.categoria.label" default="Categoria" /></span>
					
						<span class="property-value" aria-labelledby="categoria-label"><g:fieldValue bean="${produtoInstance}" field="categoria"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${produtoInstance?.dataLeilaoInicial}">
				<li class="fieldcontain">
					<span id="dataLeilaoInicial-label" class="property-label"><g:message code="produto.dataLeilaoInicial.label" default="Data Leilao Inicial" /></span>
					
						<span class="property-value" aria-labelledby="dataLeilaoInicial-label"><g:formatDate date="${produtoInstance?.dataLeilaoInicial}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${produtoInstance?.descricao}">
				<li class="fieldcontain">
					<span id="descricao-label" class="property-label"><g:message code="produto.descricao.label" default="Descricao" /></span>
					
						<span class="property-value" aria-labelledby="descricao-label"><g:fieldValue bean="${produtoInstance}" field="descricao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${produtoInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="produto.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${produtoInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${produtoInstance?.tempoLeilao}">
				<li class="fieldcontain">
					<span id="tempoLeilao-label" class="property-label"><g:message code="produto.tempoLeilao.label" default="Tempo Leilao" /></span>
					
						<span class="property-value" aria-labelledby="tempoLeilao-label"><g:formatDate date="${produtoInstance?.tempoLeilao}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${produtoInstance?.tipoDePagamento}">
				<li class="fieldcontain">
					<span id="tipoDePagamento-label" class="property-label"><g:message code="produto.tipoDePagamento.label" default="Tipo De Pagamento" /></span>
					
						<span class="property-value" aria-labelledby="tipoDePagamento-label"><g:fieldValue bean="${produtoInstance}" field="tipoDePagamento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${produtoInstance?.valor}">
				<li class="fieldcontain">
					<span id="valor-label" class="property-label"><g:message code="produto.valor.label" default="Valor" /></span>
					
						<span class="property-value" aria-labelledby="valor-label"><g:fieldValue bean="${produtoInstance}" field="valor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${produtoInstance?.valorInicial}">
				<li class="fieldcontain">
					<span id="valorInicial-label" class="property-label"><g:message code="produto.valorInicial.label" default="Valor Inicial" /></span>
					
						<span class="property-value" aria-labelledby="valorInicial-label"><g:fieldValue bean="${produtoInstance}" field="valorInicial"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${produtoInstance?.valorMaximo}">
				<li class="fieldcontain">
					<span id="valorMaximo-label" class="property-label"><g:message code="produto.valorMaximo.label" default="Valor Maximo" /></span>
					
						<span class="property-value" aria-labelledby="valorMaximo-label"><g:fieldValue bean="${produtoInstance}" field="valorMaximo"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:produtoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${produtoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
