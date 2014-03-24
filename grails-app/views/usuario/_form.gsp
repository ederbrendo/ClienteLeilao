<%@ page import="clienteleilao.Usuario" %>



<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'cpfCnpj', 'error')} ">
	<label for="cpfCnpj">
		<g:message code="usuario.cpfCnpj.label" default="Cpf Cnpj" />
		
	</label>
	<g:textField name="cpfCnpj" value="${usuarioInstance?.cpfCnpj}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="usuario.email.label" default="Email" />
		
	</label>
	<g:textField name="email" value="${usuarioInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'endereco', 'error')} ">
	<label for="endereco">
		<g:message code="usuario.endereco.label" default="Endereco" />
		
	</label>
	<g:textField name="endereco" value="${usuarioInstance?.endereco}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'nome', 'error')} ">
	<label for="nome">
		<g:message code="usuario.nome.label" default="Nome" />
		
	</label>
	<g:textField name="nome" value="${usuarioInstance?.nome}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'telefone', 'error')} ">
	<label for="telefone">
		<g:message code="usuario.telefone.label" default="Telefone" />
		
	</label>
	<g:textField name="telefone" value="${usuarioInstance?.telefone}"/>
</div>

