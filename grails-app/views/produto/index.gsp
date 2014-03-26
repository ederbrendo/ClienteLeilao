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
					<th>Valor</th>
					<th>Descrição</th>
					<th>Tipo de Pagamento</th>
					<th>Categoria</th>
					<th>Valor Inicial</th>
					<th>Tempo Leilao</th>
					<th>Data Inicial</th>
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
							${list.valor}
						</td>
						<td>
							${list.descricao}
						</td>
						<td>
							${list.tipo_pagamento}
						</td>
						<td>
							${list.categoria}
						</td>
						<td>
							${list.valor_inicial}
						</td>
						<td>
							${list.tempo_leilao}
						</td>
						<td>
							${list.data_inicial}
						</td>
						<td><button type="submit" class="btn btn-default">Dar
								Lance</button></td>
					</tr>
			</g:each>
			</tbody>
		</table>
	</div>

</body>
</g:if>
</html>
