
<%@ page import="clienteleilao.Compra" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'compra.label', default: 'Compra')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-compra" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-compra" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="categoria" title="${message(code: 'compra.categoria.label', default: 'Categoria')}" />
					
						<g:sortableColumn property="data" title="${message(code: 'compra.data.label', default: 'Data')}" />
					
						<g:sortableColumn property="descricao" title="${message(code: 'compra.descricao.label', default: 'Descricao')}" />
					
						<g:sortableColumn property="duracaoDias" title="${message(code: 'compra.duracaoDias.label', default: 'Duracao Dias')}" />
					
						<g:sortableColumn property="nome" title="${message(code: 'compra.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="periodo" title="${message(code: 'compra.periodo.label', default: 'Periodo')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${compraInstanceList}" status="i" var="compraInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${compraInstance.id}">${fieldValue(bean: compraInstance, field: "categoria")}</g:link></td>
					
						<td><g:formatDate date="${compraInstance.data}" /></td>
					
						<td>${fieldValue(bean: compraInstance, field: "descricao")}</td>
					
						<td>${fieldValue(bean: compraInstance, field: "duracaoDias")}</td>
					
						<td>${fieldValue(bean: compraInstance, field: "nome")}</td>
					
						<td>${fieldValue(bean: compraInstance, field: "periodo")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${compraInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
