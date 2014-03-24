<%@ page import="clienteleilao.Servico"%>
<html>
<head>
<meta name="layout" content="cabecalho" />
<r:require modules="bootstrap" />
</head>
<body>
	<h3>Serviços:</h3>


	<%--<select class="form-control">
		<g:each in="${result}" var="list">
			<option>Produto:
				${list.nome} - Valor:
				${list.valor}
			</option>
		</g:each>
	</select>

	--%><div class="table-responsive">
		<table class="table table-bordered">
			<thead>
					<tr>
						<th>ID</th>
						<th>Nome</th>
						<th>Valor</th>
						<th>Descrição</th>
						<th>Tipo de Pagamento</th>
						<th>Categoria</th>
						<th>Inicio do Serviço</th>
						<th>Duração dias</th>
						<th>Periodo</th>
						<th>#</th>
					</tr>
			</thead>
			<g:each in="${result}" var="list">
			<tbody>
					<tr>
						<td>${list._id}</td>
						<td>${list.nome}</td>
						<td>${list.valor}</td>
						<td>${list.descricao}</td>
						<td>${list.tipo_pagamento}</td>
						<td>${list.categoria}</td>
						<td>${list.inicio_servico}</td>
						<td>${list.duracao_dias}</td>
						<td>${list.periodo}</td>
						<td><button type="submit" class="btn btn-default">Contratar</button></td>
					</tr>
				</g:each>
			</tbody>
		</table>
	</div>

</body>
</html>
