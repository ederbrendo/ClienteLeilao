<html>
<head>
<meta name="layout" content="cabecalho" />
<r:require modules="bootstrap"/>
</head>
<g:if test="${session.usuario}">
<body>
   		<h3>Minhas Compras: </h3>
   		
   		<div class="table-responsive">
		<table class="table table-bordered">
			<thead>
					<tr>
						<th>ID</th>
						<th>Nome</th>
						<th>Valor</th>
						<th>Tipo de Entrega</th>
						<th>Tipo de Pagamento</th>
						<th>Categoria</th>
						<th>Inicio do Serviço</th>
						<th>Duração dias</th>
						<th>Periodo</th>
					</tr>
			</thead>
			<g:each in="${compras}" var="list">
			<tbody>
					<tr>
						<td>${list._id}</td>
						<td>${list.itemDeVenda.nome}</td>
						<td>${list.valor}</td>
						<td>${list.tipoEntrega}</td>
						<td>${list.tipoDePagamento}</td>
						<td>${list.itemDeVenda.categoria}</td>
						<td>${list.itemDeVenda.inicio_servico}</td>
						<td>${list.itemDeVenda.duracao_dias}</td>
						<td>${list.itemDeVenda.periodo}</td>
						
					</tr>
				</g:each>
			</tbody>
		</table>
	</div>
   		

   		
   </g:if>
</html>
