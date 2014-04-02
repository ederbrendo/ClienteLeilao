<%@ page import="clienteleilao.Compra"%>
<html>
<head>
<meta name="layout" content="cabecalho" />
<r:require modules="bootstrap" />
</head>
<body>
	<h3>Dados da Lance:</h3>
	
  <g:form method="post" action="lance" class="form-horizontal" >
 
 <div class="table-responsive">
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>Nome</th>
					<th>Lance Atual</th>
					<th>Tipo de Pagamento</th>
					<th>Categoria</th>
					<th>Tempo Leilao</th>
				</tr>
			</thead>
				<tbody>
					<tr>
						<td>
							${list.nome}
						</td>
						<td>
							${list.valor}
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
					</tr>
			</tbody>
		</table>
	</div>
 
  <div class="form-group">
        <label class="col-sm-2 control-label">ID do Produto</label>
          <div class="col-sm-8">
            <input name="id_produto" type="text" class="form-control" value="${list._id}" readonly >
          </div>
      </div>
      
      <div class="form-group">
        <label class="col-sm-2 control-label">ID do Comprador</label>
          <div class="col-sm-8">
            <input name="id_comprador" type="text" class="form-control" value="${session.usuario.cpfCnpj}" readonly >
          </div>
      </div>
      
      
         <div class="form-group">
        <label class="col-sm-2 control-label">Valor do Lance </label>
          <div class="col-sm-8">
            <input name="valor" type="number" class="form-control">
          </div>
      </div>
      
      
       <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
          <button type="submit" class="btn btn-primary">Lance</button>
        </div>
      </div>
      
 </g:form>



	<%--<select class="form-control">
		<g:each in="${result}" var="list">
			<option>Produto:
				${list.nome} - Valor:
				${list.valor}
			</option>
		</g:each>
	</select>

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
						<th>Inicio do Serviço</th>
						<th>Duração dias</th>
						<th>Periodo</th>
						<th>#</th>
					</tr>
			</thead>
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
						<td><a type="submit" class="btn btn-default">Contratar</a></td>
					</tr>
			</tbody>
		</table>
	</div>
	
	--%>



</body>
</html>
