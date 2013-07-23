
<%@ page import="com.ideasynegocios.business.ContactoNegocio" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'contactoNegocio.label', default: 'ContactoNegocio')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-contactoNegocio" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-contactoNegocio" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list contactoNegocio">
			
				<g:if test="${contactoNegocioInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="contactoNegocio.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${contactoNegocioInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactoNegocioInstance?.apellidoPaterno}">
				<li class="fieldcontain">
					<span id="apellidoPaterno-label" class="property-label"><g:message code="contactoNegocio.apellidoPaterno.label" default="Apellido Paterno" /></span>
					
						<span class="property-value" aria-labelledby="apellidoPaterno-label"><g:fieldValue bean="${contactoNegocioInstance}" field="apellidoPaterno"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactoNegocioInstance?.apellidoMaterno}">
				<li class="fieldcontain">
					<span id="apellidoMaterno-label" class="property-label"><g:message code="contactoNegocio.apellidoMaterno.label" default="Apellido Materno" /></span>
					
						<span class="property-value" aria-labelledby="apellidoMaterno-label"><g:fieldValue bean="${contactoNegocioInstance}" field="apellidoMaterno"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactoNegocioInstance?.sexo}">
				<li class="fieldcontain">
					<span id="sexo-label" class="property-label"><g:message code="contactoNegocio.sexo.label" default="Sexo" /></span>
					
						<span class="property-value" aria-labelledby="sexo-label"><g:fieldValue bean="${contactoNegocioInstance}" field="sexo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactoNegocioInstance?.calle}">
				<li class="fieldcontain">
					<span id="calle-label" class="property-label"><g:message code="contactoNegocio.calle.label" default="Calle" /></span>
					
						<span class="property-value" aria-labelledby="calle-label"><g:fieldValue bean="${contactoNegocioInstance}" field="calle"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactoNegocioInstance?.colonia}">
				<li class="fieldcontain">
					<span id="colonia-label" class="property-label"><g:message code="contactoNegocio.colonia.label" default="Colonia" /></span>
					
						<span class="property-value" aria-labelledby="colonia-label"><g:link controller="colonia" action="show" id="${contactoNegocioInstance?.colonia?.id}">${contactoNegocioInstance?.colonia?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactoNegocioInstance?.codigoPostal}">
				<li class="fieldcontain">
					<span id="codigoPostal-label" class="property-label"><g:message code="contactoNegocio.codigoPostal.label" default="Codigo Postal" /></span>
					
						<span class="property-value" aria-labelledby="codigoPostal-label"><g:fieldValue bean="${contactoNegocioInstance}" field="codigoPostal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactoNegocioInstance?.noExt}">
				<li class="fieldcontain">
					<span id="noExt-label" class="property-label"><g:message code="contactoNegocio.noExt.label" default="No Ext" /></span>
					
						<span class="property-value" aria-labelledby="noExt-label"><g:fieldValue bean="${contactoNegocioInstance}" field="noExt"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactoNegocioInstance?.noInt}">
				<li class="fieldcontain">
					<span id="noInt-label" class="property-label"><g:message code="contactoNegocio.noInt.label" default="No Int" /></span>
					
						<span class="property-value" aria-labelledby="noInt-label"><g:fieldValue bean="${contactoNegocioInstance}" field="noInt"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactoNegocioInstance?.referencia}">
				<li class="fieldcontain">
					<span id="referencia-label" class="property-label"><g:message code="contactoNegocio.referencia.label" default="Referencia" /></span>
					
						<span class="property-value" aria-labelledby="referencia-label"><g:fieldValue bean="${contactoNegocioInstance}" field="referencia"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactoNegocioInstance?.telefono}">
				<li class="fieldcontain">
					<span id="telefono-label" class="property-label"><g:message code="contactoNegocio.telefono.label" default="Telefono" /></span>
					
						<span class="property-value" aria-labelledby="telefono-label"><g:fieldValue bean="${contactoNegocioInstance}" field="telefono"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactoNegocioInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="contactoNegocio.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${contactoNegocioInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactoNegocioInstance?.negocio}">
				<li class="fieldcontain">
					<span id="negocio-label" class="property-label"><g:message code="contactoNegocio.negocio.label" default="Negocio" /></span>
					
						<span class="property-value" aria-labelledby="negocio-label"><g:link controller="negocio" action="show" id="${contactoNegocioInstance?.negocio?.id}">${contactoNegocioInstance?.negocio?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${contactoNegocioInstance?.id}" />
					<g:link class="edit" action="edit" id="${contactoNegocioInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
