<html>
<head>
<meta name="layout" content="cabecalho" />
<r:require modules="bootstrap"/>
</head>
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
        <label class="col-sm-2 control-label">Descrição</label>
          <div class="col-sm-10">
            <input name="descricao" type="text" class="form-control" placeholder="Nome" style="width:400px">
          </div>
      </div>

      <div class="form-group">
        <label class="col-sm-2 control-label">Tipo de Pagamento</label>
          <div class="col-sm-10">
            <input name="tipo_pagamento" type="text" class="form-control" placeholder="Tipo de Pagamento" style="width:150px">
          </div>
      </div>
      
      <div class="form-group">
        <label class="col-sm-2 control-label">Categoria</label>
          <div class="col-sm-10">
            <input name="categoria" type="text" class="form-control" placeholder="Nome" style="width:400px">
          </div>
      </div>


      <div class="form-group">
        <label class="col-sm-2 control-label">Inicio do Serviço</label>
          <div class="col-sm-10">
            <input name="inicio_servico" type="date" name="data" class="form-control" style="width:150px" >
          </div>
      </div>    
      
      <div class="form-group">
        <label class="col-sm-2 control-label">Duração dias</label>
          <div class="col-sm-10">
            <input name="duracao_dias" type="number" class="form-control" placeholder="Nome" style="width:400px">
          </div>
      </div>
      
      <div class="form-group">
        <label class="col-sm-2 control-label">Periodo</label>
          <div class="col-sm-10">
            <input name="periodo" type="text" class="form-control" placeholder="Nome" style="width:400px">
          </div>
      </div>
      

      <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
          <button type="submit" class="btn btn-primary">Cadastrar</button>
        </div>
      </div>
    </g:form>

   
  </body>
</html>
