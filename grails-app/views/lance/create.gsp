<%@ page import="clienteleilao.Compra"%>
<html>
<head>
<meta name="layout" content="cabecalho" />
<r:require modules="bootstrap" />
</head>
<body>
	<h3>Dados da Lance:</h3>
	
  <g:form method="post" action="lance" class="form-horizontal" >
 
  <div class="form-group">
        <label class="col-sm-2 control-label">ID</label>
          <div class="col-sm-8">
            <input name="_id" type="text" class="form-control" value="${list._id}" readonly >
          </div>
      </div>
      
        <div class="form-group">
        <label class="col-sm-2 control-label">Nome</label>
          <div class="col-sm-8">
            <input name="nome" type="text" class="form-control" value="${list.nome}" readonly >
          </div>
      </div>
      
        <div class="form-group">
        <label class="col-sm-2 control-label">Descrição</label>
          <div class="col-sm-8">
            <input name="descricao" type="text" class="form-control" value="${list.descricao}" readonly >
          </div>
      </div>

     <div class="form-group">
        <label class="col-sm-2 control-label">Tipo de Pagamento</label>
          <div class="col-sm-8">
            <input name="tipo_pagamento" type="text" class="form-control" value="${list.tipo_pagamento}" readonly >
          </div>
      </div>
   
   <div class="form-group">
        <label class="col-sm-2 control-label">Categoria</label>
          <div class="col-sm-8">
            <input name="categoria" type="text" class="form-control" value="${list.categoria}" readonly >
          </div>
      </div>
     
     
   <div class="form-group">
        <label class="col-sm-2 control-label">Lance Atual</label>
          <div class="col-sm-8">
            <input name="valor_inicial" type="text" class="form-control" value="${list.valor_inicial}" readonly >
          </div>
      </div>
     
  
   <div class="form-group">
        <label class="col-sm-2 control-label">Tempo do leilao</label>
          <div class="col-sm-8">
            <input name="tempo_leilao" class="form-control" value="${list.tempo_leilao}" readonly >
          </div>
      </div>
  
   <div class="form-group">
        <label class="col-sm-2 control-label">Data Inicial</label>
          <div class="col-sm-8">
            <input name="data_inicial" class="form-control" value="${list.data_inicial}" readonly >
          </div>
      </div>
     
     <div class="form-group">
        <label class="col-sm-2 control-label">Hora do lance</label>
          <div class="col-sm-8">
            <input name="data_hora" class="form-control" value="${new Date()}" readonly >
          </div>
      </div>
      
         <div class="form-group">
        <label class="col-sm-2 control-label">Meu Lance</label>
          <div class="col-sm-8">
            <input name="valor" type="text" class="form-control">
          </div>
      </div>
      
      
       <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
          <button type="submit" class="btn btn-primary">Dar Lance</button>
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
