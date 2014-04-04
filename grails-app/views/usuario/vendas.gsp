<html>
<head>
<meta name="layout" content="cabecalho" />
<r:require modules="bootstrap"/>
</head>
<g:if test="${session.usuario}">
<body>
   		<h3>Minhas Vendas: </h3>
   		
   		<h3>Produtos: </h3>
   		
   		<div class="table-responsive">
		<table class="table table-bordered">
			<thead>
					<tr>
						<th>ID</th>
						<th>Nome</th>
						<th>Valor</th>
						<th>Tipo de Pagamento</th>
						<th>Categoria</th>
						<th>Tempo de Leilao</th>
					</tr>
			</thead>
			<g:each in="${produtos}" var="list">
			<tbody>
					<tr>
						<td>${list._id}</td>
						<td>${list.nome}</td>
						<td>${list.valor}</td>
						<td>${list.tipo_pagamento}</td>
						<td>${list.categoria}</td>
						<td>${list.tempo_leilao}</td>
					</tr>
				</g:each>
			</tbody>
		</table>
	</div>
	
	<h3>Serviços: </h3>
	
	
   		<div class="table-responsive">
		<table class="table table-bordered">
			<thead>
					<tr>
						<th>ID</th>
						<th>Nome</th>
						<th>Valor</th>
						<th>Tipo de Pagamento</th>
						<th>Inicio do Servico</th>
						<th>Duração em Dias</th>
						<th>Periodo</th>
					</tr>
			</thead>
			<g:each in="${servicos}" var="list2">
			<tbody>
					<tr>
						<td>${list2._id}</td>
						<td>${list2.nome}</td>
						<td>${list2.valor}</td>
						<td>${list2.tipo_pagamento}</td>
						<td>${list2.inicio_servico}</td>
						<td>${list2.duracao_dias}</td>
						<td>${list2.periodo}</td>
					</tr>
				</g:each>
			</tbody>
		</table>
	</div>
   		

   		
   </g:if>
</html>
