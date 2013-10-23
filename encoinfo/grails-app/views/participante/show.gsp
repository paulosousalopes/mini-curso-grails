
<%@ page import="encoinfo.Participante" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'participante.label', default: 'Participante')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-participante" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-participante" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list participante">
			
				<g:if test="${participanteInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="participante.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${participanteInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${participanteInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="participante.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${participanteInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${participanteInstance?.idade}">
				<li class="fieldcontain">
					<span id="idade-label" class="property-label"><g:message code="participante.idade.label" default="Idade" /></span>
					
						<span class="property-value" aria-labelledby="idade-label"><g:fieldValue bean="${participanteInstance}" field="idade"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:participanteInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${participanteInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
