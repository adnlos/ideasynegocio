
<%@ page import="com.ideasynegocios.business.Suscriptor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'suscriptor.label', default: 'Suscriptor')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-suscriptor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-suscriptor" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list suscriptor">
			
				<g:if test="${suscriptorInstance?.tipoReparto}">
				<li class="fieldcontain">
					<span id="tipoReparto-label" class="property-label"><g:message code="suscriptor.tipoReparto.label" default="Tipo Reparto" /></span>
					
						<span class="property-value" aria-labelledby="tipoReparto-label"><g:fieldValue bean="${suscriptorInstance}" field="tipoReparto"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${suscriptorInstance?.medioSuscripcion}">
				<li class="fieldcontain">
					<span id="medioSuscripcion-label" class="property-label"><g:message code="suscriptor.medioSuscripcion.label" default="Medio Suscripcion" /></span>
					
						<span class="property-value" aria-labelledby="medioSuscripcion-label"><g:fieldValue bean="${suscriptorInstance}" field="medioSuscripcion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${suscriptorInstance?.fechaSuscripcion}">
				<li class="fieldcontain">
					<span id="fechaSuscripcion-label" class="property-label"><g:message code="suscriptor.fechaSuscripcion.label" default="Fecha Suscripcion" /></span>
					
						<span class="property-value" aria-labelledby="fechaSuscripcion-label"><g:formatDate date="${suscriptorInstance?.fechaSuscripcion}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${suscriptorInstance?.fechaSuspension}">
				<li class="fieldcontain">
					<span id="fechaSuspension-label" class="property-label"><g:message code="suscriptor.fechaSuspension.label" default="Fecha Suspension" /></span>
					
						<span class="property-value" aria-labelledby="fechaSuspension-label"><g:formatDate date="${suscriptorInstance?.fechaSuspension}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${suscriptorInstance?.fechaBaja}">
				<li class="fieldcontain">
					<span id="fechaBaja-label" class="property-label"><g:message code="suscriptor.fechaBaja.label" default="Fecha Baja" /></span>
					
						<span class="property-value" aria-labelledby="fechaBaja-label"><g:formatDate date="${suscriptorInstance?.fechaBaja}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${suscriptorInstance?.estadoAdmin}">
				<li class="fieldcontain">
					<span id="estadoAdmin-label" class="property-label"><g:message code="suscriptor.estadoAdmin.label" default="Estado Admin" /></span>
					
						<span class="property-value" aria-labelledby="estadoAdmin-label"><g:fieldValue bean="${suscriptorInstance}" field="estadoAdmin"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${suscriptorInstance?.id}" />
					<g:link class="edit" action="edit" id="${suscriptorInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
