<html>
<head>
<meta name="layout" content="cabecalho" />
<r:require modules="bootstrap"/>
</head>
<g:if test="${session.usuario}">
<body>
    <h3>Vender Serviço: </h3>  
	
    <g:form method="post" action="submitForm"  class="form-horizontal">
    <%--

      <div class="form-group">
        <label class="col-sm-2 control-label">Produto/Servico</label>
        <div class="col-sm-10">
          <select class="form-control" style="width:150px">
              <option>   --   </option>
              <option>Produto</option>
              <option>Servico</option>
          </select>
        </div>
      </div>

      --%>
      
           <div class="form-group">
				<label class="col-sm-2 control-label">CPF Vendedor</label>
				<div class="col-sm-8">
					<input name="cpfCnpj" type="text" class="form-control"
						value="${session.usuario.cpfCnpj}" readonly>
				</div>
			</div>
 
          <div class="form-group">
        <label class="col-sm-2 control-label">Nome</label>
          <div class="col-sm-10">
            <input name="nome" type="text" class="form-control" placeholder="Nome" style="width:400px">
          </div>
      </div>
      

      <div class="form-group">
        <label class="col-sm-2 control-label">Valor</label>
          <div class="col-sm-10">
            <input name="valor" type="text" class="form-control" placeholder="Valor" style="width:150px">
          </div>
      </div>


     <div class="form-group">
				<label class="col-sm-2 control-label">Tipo de Pagamento</label>
				<div class="col-sm-10">
					<select onChange="pagamento" name="tipo_pagamento"
						class="form-control" style="width: 150px">

						<g:each in="${pagamentos}" var="pagamento">
							<option value="${pagamento.id}">
								${pagamento.nome}
							</option>
						</g:each>
					</select>
				</div>
			</div>
      
       <div class="form-group">
				<label class="col-sm-2 control-label">Categoria</label>
				<div class="col-sm-10">
					<select onChange="categoria" name="categoria" class="form-control"
						style="width: 150px">

						<g:each in="${categorias}" var="categoria">
							<option value="${categoria.nome}">
								${categoria.nome}
							</option>
						</g:each>
					</select>
				</div>
			</div>

      <div class="form-group">
        <label class="col-sm-2 control-label">Inicio do Serviço</label>
          <div class="col-sm-10">
            <input id="datepicker" name="inicio_servico" type="text" class="form-control" style="width:150px" >
          </div>
      </div>    
      
      <div class="form-group">
        <label class="col-sm-2 control-label">Duração dias</label>
          <div class="col-sm-2">
            <input name="duracao_dias" type="number" class="form-control" placeholder="Dias" style="width:400px">
          </div>
      </div>
      
      <div class="form-group">
        <label class="col-sm-2 control-label">Periodo</label>
          <div class="col-sm-10">
            <input name="periodo" type="text" class="form-control" placeholder="Periodo" style="width:400px">
          </div>
      </div>
      
    
      <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
          <button type="submit" class="btn btn-primary">Cadastrar</button>
        </div>
      </div>
    </g:form>
    
    <script type="text/javascript" src="${resource(dir:'js', file: 'jquery.datetimepicker.js')}"></script>
 <link rel="stylesheet" href="${resource(dir:'css', file: 'jquery.datetimepicker.css')}" type="text/css">
 <script type="text/javascript" src="js/jquery.ui.datepicker-pt-BR.js"></script>´
 
 <r:script>
  $(function() {
    $( "#datepicker" ).datetimepicker({
    
    lang:'pt' , 
    timepicker:false,
    format:'d/m/Y'
    
    });
    
    $('#datetimepicker').datetimepicker({
    
    lang:'pt',
    format:'d/m/Y H:i'
    
    });
  });
  </r:script>
  

   
  </body>
  </g:if>
</html>
