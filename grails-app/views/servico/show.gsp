<%@ page import="clienteleilao.Servico"%>
<html>
<head>
<meta name="layout" content="cabecalho" />
<r:require modules="bootstrap" />
</head>
<body>
	<h3>Serviços:</h3>


<g:each in="${result}">
<p>Nome ${result.nome}</p>
</g:each>


	<select class="form-control">
	<g:each in="${result}" var="list">
		<option>Nome: ${list.nome}</option>
		 </g:each>
	</select>



</body>
</html>