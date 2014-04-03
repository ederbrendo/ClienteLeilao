<html>
<head>
<meta name="layout" content="cabecalho" />
<r:require modules="bootstrap"/>
</head>
<g:if test="${session.usuario}">
<body>
   		<h3>Meus Lances: </h3>
   		
   		<div class="table-responsive">
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>ID</th>
					<th>Nome</th>
					<th>Valor do produto</th>
					<th>Valor do meu lance</th>
					<th>Tempo Leilao</th>
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
							${list.valor}
						</td>
						<td>
							${list1.valor}
						</td>
						<td>
							${list.tempo_leilao}
						</td>
						<td>
							${list.vendedor.nome}
						</td>
						<td><a href="${createLink(uri: '/lance/create')}?id=${list._id}" class="btn btn-default">Dar Lance</a></td></td>
					</tr>
			</g:each>
			</tbody>
		</table>
	</div>

   		
   </g:if>
</html>
