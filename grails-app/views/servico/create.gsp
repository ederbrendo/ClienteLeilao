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
          <select name="tipo_pagamento" class="form-control" style="width:150px">
              <option>Dinheiro</option>
              <option>Master Card - 1x</option>
              <option>Master Card - 2x</option>
              <option>Master Card - 3x</option>
              <option>Master Card - 4x</option>
              <option>Master Card - 5x</option>
              <option>Master Card - 6x</option>
              <option>Master Card - 7x</option>
              <option>Master Card - 8x</option>
              <option>Master Card - 9x</option>
              <option>Master Card - 10x</option>
              <option>Visa - 1x</option>
              <option>Visa - 2x</option>
              <option>Visa - 3x</option>
              <option>Visa - 4x</option>
              <option>Visa - 5x</option>
              <option>Visa - 6x</option>
              <option>Visa - 7x</option>
              <option>Visa - 8x</option>
              <option>Visa - 9x</option>
              <option>Visa - 10x</option>
          </select>
        </div>
      </div>
      
       <div class="form-group">
        <label class="col-sm-2 control-label">Categoria</label>
        <div class="col-sm-10">
          <select name="categoria" class="form-control" style="width:150px">
              <option>Eletronico</option>
              <option>Gadgets</option>
              <option>Informaticax</option>
              <option>Vestuario</option>
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
        <label class="col-sm-2 control-label">CPF/CNJPJ</label>
          <div class="col-sm-2">
            <input name="vendedor" type="text" class="form-control" value="${session.usuario.cpfCnpj}" readonly >
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
