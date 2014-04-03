<%@ page import="clienteleilao.Compra"%>
<html>
<head>
<meta name="layout" content="cabecalho" />
<r:require modules="bootstrap" />
</head>
<body>
	<h3>Dados do Serviço:</h3>
	

 <div class="table-responsive">
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>Nome</th>
					<th>Valor</th>
					<th>Inicio</th>
					<th>Duracao</th>
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
							${list.inicio_servico}
						</td>
						<td>
							${list.duracao_dias} 
						</td>
						
					</tr>
			</tbody>
		</table>
	</div>
 
  <g:form method="post" action="comprar" class="form-horizontal" >
  
  
  <div class="form-group">
        <label class="col-sm-2 control-label">ID do Serviço</label>
          <div class="col-sm-8">
            <input name="id_servico" type="text" class="form-control" value="${list._id}" readonly >
          </div>
      </div>
      
      <div class="form-group">
        <label class="col-sm-2 control-label">CPF do Comprador</label>
          <div class="col-sm-8">
            <input name="cpfCnpj" type="text" class="form-control" value="${session.usuario.cpfCnpj}" readonly >
          </div>
      </div>
      
      
       <div class="form-group">
        <label class="col-sm-2 control-label">Tipo da Entrega</label>
          <div class="col-sm-8">
            <input name="tipo_entrega" type="text" class="form-control"  >
          </div>
      </div>
      
      
       <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
          <button type="submit" class="btn btn-primary">Comprar</button>
        </div>
      </div>
      
 </g:form>

</body>
</html>
