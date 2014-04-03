<html>
<head>
<meta name="layout" content="cabecalho" />
<r:require modules="bootstrap"/>
</head>
<g:if test="${!session.usuario}">
<body>
   		<h3>Cadastrar Usuario: </h3>

   		<g:form method="post" action="submitFormUsuario" class="form-horizontal" >

   			<div class="form-group">
   			  <label class="col-sm-2 control-label">Nome</label>
   			    <div class="col-sm-10">
   			      <input name="nome" type="text" class="form-control" autofocus="" required="" placeholder="Nome" style="width:300px">
   			    </div>
   			</div>   			

   			<div class="form-group">
   			  <label class="col-sm-2 control-label">CPF/CNPJ</label>
   			    <div class="col-sm-10">
   			      <input name="cpf_cnpj" type="text" required class="form-control" placeholder="CPF" style="width:150px">
   			    </div>
   			</div>

   			

   			<div class="form-group">
   			  <label class="col-sm-2 control-label">Endereco</label>
   			    <div class="col-sm-10">
   			      <input name="endereco" type="text" class="form-control" required placeholder="Endereco" style="width:300px">
   			    </div>
   			</div>

        <div class="form-group">
          <label class="col-sm-2 control-label">E-mail</label>
            <div class="col-sm-10">
              <input name="email" class="form-control" type="text" required placeholder="exemplo@sis.com" style="width:300px"></input>
            </div>
        </div>

   			<div class="form-group">
   			  <label class="col-sm-2 control-label">Telefone</label>
   			    <div class="col-sm-10">
   			      <input name="telefone" type="text" required class="form-control" placeholder="(DDD) xxxx-xxxx" style="width:150px">
   			    </div>
   			</div>

   			<div class="form-group">
   			  <div class="col-sm-offset-2 col-sm-10">
   			    <button type="submit" class="btn btn-primary">Cadastrar</button>
           
   			  </div>
   			</div>

   		</g:form>
   </body>
   </g:if>
</html>
