<!DOCTYPE html>
<html lang="pt">
<head>

<title><g:layoutTitle default="Cliente Leilão" /></title>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<r:require module="jquery-ui" />
<r:require module="bootstrap" />


<g:layoutHead />
<r:layoutResources />

</head>
<g:layoutTitle />

<style type="text/css">
body {
	padding-top: 80px;
	padding-bottom: 40px;
	padding-left: 60px;
	padding-right: 60px;
}
</style>
<r:layoutResources />
</head>
<body>
	<g:layoutBody />
	<r:layoutResources />
	<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="${createLink(uri: '/')}">Cliente
					Leilão</a>
			</div>
			<div class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<g:if test="${session.usuario}">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">Menu Principal <b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li class="dropdown-header">Vendas</li>
								<li><a href="${createLink(uri: '/produto/create')}"">Leiloar
										- Produto</a></li>
								<li><a href="${createLink(uri: '/servico/create')}">Vender
										- Serviço</a></li>
								<li class="divider"></li>
								<li class="dropdown-header">Compras</li>
								<li><a href="${createLink(uri: '/produto/index')}">Dar
										um lance - Produto</a></li>
								<li><a href="${createLink(uri: '/servico/index')}">Contratar
										- Serviço</a></li>
								<li class="divider"></li>
							</ul></li>
					</g:if>
				</ul>

				<div class="navbar-collapse collapse">
					<g:if test="${!session.usuario}">
						<g:form method="post" controller="Usuario" action="logar"
							class="navbar-form navbar-right" role="form">
							<div class="form-group">
								<input name="cpfCnpj" type="text"
									placeholder="Digite Seu CPF/CNPJ" class="form-control">
							</div>
							<button type="submit" class="btn btn-success">Entrar</button>
							<a href="${createLink(uri: '/usuario/create')}"
								class="btn btn-warning" role="button">Cadastrar CPF/CNPJ</a>

						</g:form>
					</g:if>
					<g:if test="${session.usuario}">
						<g:form method="post" controller="Usuario" action="logout"
							class="navbar-form navbar-right" role="form">

							<button type="submit" class="btn btn-success">Sair</button>

						</g:form>
					</g:if>
				</div>
				<!--/.navbar-collapse -->
			</div>
			<!--/.nav-collapse -->
		</div>
	</div>

</body>

<footer>
	<p>&copy; Cliente Leilão 2014</p>
</footer>


</html>