<%@ page import="clienteleilao.Produto"%>
<html>
<head>
<meta name="layout" content="cabecalho" />
<r:require modules="bootstrap" />
</head>
<g:if test="${session.usuario}">
<body>
	<h3>Produtos:</h3>

	<div class="table-responsive">
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>ID</th>
					<th>Nome</th>
					<th>Valor Inicial</th>
					<th>Tipo de Pagamento</th>
					<th>Categoria</th>
					<th>Tempo Leilao</th>
					<th>Data Inicial</th>
					<th>Nome do Vendedor</th>
					<th>#</th>
				</tr>
			</thead>
			<g:each in="${result}" var="list">
				<tbody>
					<tr>
						<td>
							${list._id}
						</td>
						<td>
							${list.nome}
						</td>
						<td>
							R$${list.valor}
						</td>
						<td>
							${list.tipo_pagamento}
						</td>
						<td>
							${list.categoria}
						</td>
						<td>
							${list.tempo_leilao}
						</td>
						<td>
							${list.data_inicial}
						</td>
						<td>
							${list.vendedor.nome}
						</td>
						<td><a href="${createLink(uri: '/lance/create/')}${list._id}" class="btn btn-default">Dar Lance</a></td></td>
					</tr>
			</g:each>
			</tbody>
		</table>
	</div>

</body>
</g:if>
</html>
