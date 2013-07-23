
<%@ page import="com.ideasynegocios.business.PagoEspacioPublicitario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pagoEspacioPublicitario.label', default: 'PagoEspacioPublicitario')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-pagoEspacioPublicitario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-pagoEspacioPublicitario" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list pagoEspacioPublicitario">
			
				<g:if test="${pagoEspacioPublicitarioInstance?.fase}">
				<li class="fieldcontain">
					<span id="fase-label" class="property-label"><g:message code="pagoEspacioPublicitario.fase.label" default="Fase" /></span>
					
						<span class="property-value" aria-labelledby="fase-label"><g:fieldValue bean="${pagoEspacioPublicitarioInstance}" field="fase"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pagoEspacioPublicitarioInstance?.total}">
				<li class="fieldcontain">
					<span id="total-label" class="property-label"><g:message code="pagoEspacioPublicitario.total.label" default="Total" /></span>
					
						<span class="property-value" aria-labelledby="total-label"><g:fieldValue bean="${pagoEspacioPublicitarioInstance}" field="total"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pagoEspacioPublicitarioInstance?.date}">
				<li class="fieldcontain">
					<span id="date-label" class="property-label"><g:message code="pagoEspacioPublicitario.date.label" default="Date" /></span>
					
						<span class="property-value" aria-labelledby="date-label"><g:formatDate date="${pagoEspacioPublicitarioInstance?.date}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${pagoEspacioPublicitarioInstance?.notas}">
				<li class="fieldcontain">
					<span id="notas-label" class="property-label"><g:message code="pagoEspacioPublicitario.notas.label" default="Notas" /></span>
					
						<span class="property-value" aria-labelledby="notas-label"><g:fieldValue bean="${pagoEspacioPublicitarioInstance}" field="notas"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pagoEspacioPublicitarioInstance?.espacioPublicitario}">
				<li class="fieldcontain">
					<span id="espacioPublicitario-label" class="property-label"><g:message code="pagoEspacioPublicitario.espacioPublicitario.label" default="Espacio Publicitario" /></span>
					
						<span class="property-value" aria-labelledby="espacioPublicitario-label"><g:link controller="espacioPublicitario" action="show" id="${pagoEspacioPublicitarioInstance?.espacioPublicitario?.id}">${pagoEspacioPublicitarioInstance?.espacioPublicitario?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${pagoEspacioPublicitarioInstance?.id}" />
					<g:link class="edit" action="edit" id="${pagoEspacioPublicitarioInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
