<html>
<head>
<meta name="layout" content="cabecalho" />
<r:require modules="bootstrap"/>
</head>
<g:if test="${session.usuario}">
<body>
   		<h3>Tipos de Pagamento: </h3>

                 <ul>
				<g:each in="${result}" var="list">
					<li>${list.nome }</li>
					</g:each>
				</ul>
   </g:if>
</html>
