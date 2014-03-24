<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Cliente Leilão</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script type="text/javascript"
	src="/ClienteLeilao/web-app/js/cnpjMask/cnpj.js"></script>
<script src="/ClienteLeilao/web-app/js/cnpjMask/maskCnpj.js"
	type="text/javascript" /></script>

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
				<a class="navbar-brand" href="${createLink(uri: '/')}">Cliente Leilão</a>
			</div>
			<div class="collapse navbar-collapse">
				<ul class="nav navbar-nav">

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
							<li class="dropdown-header">Usuário</li>
							<li><a href="${createLink(uri: '/usuario/create')}"">Cadastrar
									- Usuário</a></li>

							<li class="divider"></li>
						</ul></li>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</div>

</body>

<footer>
	<p>&copy; Cliente Leilão 2014 - Test Git</p>
</footer>


</html>