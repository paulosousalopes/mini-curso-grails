<%@ page import="encoinfo.Participante" %>



<div class="fieldcontain ${hasErrors(bean: participanteInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="participante.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${participanteInstance?.nome}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: participanteInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="participante.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" required="" value="${participanteInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: participanteInstance, field: 'idade', 'error')} required">
	<label for="idade">
		<g:message code="participante.idade.label" default="Idade" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="idade" type="number" value="${participanteInstance.idade}" required=""/>
</div>

