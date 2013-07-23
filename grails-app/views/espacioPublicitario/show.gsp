
<%@ page import="com.ideasynegocios.business.EspacioPublicitario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'espacioPublicitario.label', default: 'EspacioPublicitario')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-espacioPublicitario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-espacioPublicitario" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list espacioPublicitario">
			
				<g:if test="${espacioPublicitarioInstance?.negocio}">
				<li class="fieldcontain">
					<span id="negocio-label" class="property-label"><g:message code="espacioPublicitario.negocio.label" default="Negocio" /></span>
					
						<span class="property-value" aria-labelledby="negocio-label"><g:link controller="negocio" action="show" id="${espacioPublicitarioInstance?.negocio?.id}">${espacioPublicitarioInstance?.negocio?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${espacioPublicitarioInstance?.paquete}">
				<li class="fieldcontain">
					<span id="paquete-label" class="property-label"><g:message code="espacioPublicitario.paquete.label" default="Paquete" /></span>
					
						<span class="property-value" aria-labelledby="paquete-label"><g:link controller="paquete" action="show" id="${espacioPublicitarioInstance?.paquete?.id}">${espacioPublicitarioInstance?.paquete?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${espacioPublicitarioInstance?.precioFinal}">
				<li class="fieldcontain">
					<span id="precioFinal-label" class="property-label"><g:message code="espacioPublicitario.precioFinal.label" default="Precio Final" /></span>
					
						<span class="property-value" aria-labelledby="precioFinal-label"><g:fieldValue bean="${espacioPublicitarioInstance}" field="precioFinal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${espacioPublicitarioInstance?.fase}">
				<li class="fieldcontain">
					<span id="fase-label" class="property-label"><g:message code="espacioPublicitario.fase.label" default="Fase" /></span>
					
						<span class="property-value" aria-labelledby="fase-label"><g:fieldValue bean="${espacioPublicitarioInstance}" field="fase"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${espacioPublicitarioInstance?.rutaRevista}">
				<li class="fieldcontain">
					<span id="rutaRevista-label" class="property-label"><g:message code="espacioPublicitario.rutaRevista.label" default="Ruta Revista" /></span>
					
						<span class="property-value" aria-labelledby="rutaRevista-label"><g:fieldValue bean="${espacioPublicitarioInstance}" field="rutaRevista"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${espacioPublicitarioInstance?.rutaBanner}">
				<li class="fieldcontain">
					<span id="rutaBanner-label" class="property-label"><g:message code="espacioPublicitario.rutaBanner.label" default="Ruta Banner" /></span>
					
						<span class="property-value" aria-labelledby="rutaBanner-label"><g:fieldValue bean="${espacioPublicitarioInstance}" field="rutaBanner"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${espacioPublicitarioInstance?.rutaPreview}">
				<li class="fieldcontain">
					<span id="rutaPreview-label" class="property-label"><g:message code="espacioPublicitario.rutaPreview.label" default="Ruta Preview" /></span>
					
						<span class="property-value" aria-labelledby="rutaPreview-label"><g:fieldValue bean="${espacioPublicitarioInstance}" field="rutaPreview"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${espacioPublicitarioInstance?.fechaContacto}">
				<li class="fieldcontain">
					<span id="fechaContacto-label" class="property-label"><g:message code="espacioPublicitario.fechaContacto.label" default="Fecha Contacto" /></span>
					
						<span class="property-value" aria-labelledby="fechaContacto-label"><g:formatDate date="${espacioPublicitarioInstance?.fechaContacto}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${espacioPublicitarioInstance?.pagos}">
				<li class="fieldcontain">
					<span id="pagos-label" class="property-label"><g:message code="espacioPublicitario.pagos.label" default="Pagos" /></span>
					
						<g:each in="${espacioPublicitarioInstance.pagos}" var="p">
						<span class="property-value" aria-labelledby="pagos-label"><g:link controller="pagoEspacioPublicitario" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${espacioPublicitarioInstance?.publicacion}">
				<li class="fieldcontain">
					<span id="publicacion-label" class="property-label"><g:message code="espacioPublicitario.publicacion.label" default="Publicacion" /></span>
					
						<span class="property-value" aria-labelledby="publicacion-label"><g:link controller="publicacion" action="show" id="${espacioPublicitarioInstance?.publicacion?.id}">${espacioPublicitarioInstance?.publicacion?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${espacioPublicitarioInstance?.id}" />
					<g:link class="edit" action="edit" id="${espacioPublicitarioInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
