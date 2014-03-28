
<%@ page import="clienteleilao.Lance" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'lance.label', default: 'Lance')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-lance" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-lance" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="categoria" title="${message(code: 'lance.categoria.label', default: 'Categoria')}" />
					
						<g:sortableColumn property="dataHora" title="${message(code: 'lance.dataHora.label', default: 'Data Hora')}" />
					
						<g:sortableColumn property="dataLeilaoInicial" title="${message(code: 'lance.dataLeilaoInicial.label', default: 'Data Leilao Inicial')}" />
					
						<g:sortableColumn property="descricao" title="${message(code: 'lance.descricao.label', default: 'Descricao')}" />
					
						<g:sortableColumn property="nome" title="${message(code: 'lance.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="tempoLeilao" title="${message(code: 'lance.tempoLeilao.label', default: 'Tempo Leilao')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${lanceInstanceList}" status="i" var="lanceInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${lanceInstance.id}">${fieldValue(bean: lanceInstance, field: "categoria")}</g:link></td>
					
						<td><g:formatDate date="${lanceInstance.dataHora}" /></td>
					
						<td><g:formatDate date="${lanceInstance.dataLeilaoInicial}" /></td>
					
						<td>${fieldValue(bean: lanceInstance, field: "descricao")}</td>
					
						<td>${fieldValue(bean: lanceInstance, field: "nome")}</td>
					
						<td><g:formatDate date="${lanceInstance.tempoLeilao}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${lanceInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
