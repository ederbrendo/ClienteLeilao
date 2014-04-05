<%@ page import="clienteleilao.Servico"%>
<html>
<head>
<meta name="layout" content="cabecalho" />
<r:require modules="bootstrap" />
</head>
<g:if test="${session.usuario}">
<body>
	<h3>Serviços:</h3>

<div class="table-responsive">
		<table class="table table-bordered">
			<thead>
					<tr>
						<th>ID</th>
						<th>Nome</th>
						<th>Valor</th>
						<th>Tipo de Pagamento</th>
						<th>Categoria</th>
						<th>Inicio do Serviço</th>
						<th>Duração dias</th>
						<th>Periodo</th>
						<th>Nome do Vendedor</th>
						<th>#</th>
					</tr>
			</thead>
			<g:each in="${result}" var="list">
			<tbody>
					<tr>
						<td>${list._id}</td>
						<td>${list.nome}</td>
						<td>${list.valor}</td>
						<td>${list.tipo_pagamento}</td>
						<td>${list.categoria}</td>
						<td>${list.inicio_servico}</td>
						<td>${list.duracao_dias}</td>
						<td>${list.periodo}</td>
						<td>${list.vendedor.nome}</td>
						<td><a href="${createLink(uri: '/compra/create/')}${list._id}" class="btn btn-default">Contratar</a></td>
					</tr>
				</g:each>
			</tbody>
		</table>
	</div>

</body>
</g:if>
</html>
