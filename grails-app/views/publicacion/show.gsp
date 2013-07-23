
<%@ page import="com.ideasynegocios.business.Publicacion" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'publicacion.label', default: 'Publicacion')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-publicacion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-publicacion" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list publicacion">
			
				<g:if test="${publicacionInstance?.numeroPublicacion}">
				<li class="fieldcontain">
					<span id="numeroPublicacion-label" class="property-label"><g:message code="publicacion.numeroPublicacion.label" default="Numero Publicacion" /></span>
					
						<span class="property-value" aria-labelledby="numeroPublicacion-label"><g:fieldValue bean="${publicacionInstance}" field="numeroPublicacion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${publicacionInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="publicacion.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${publicacionInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${publicacionInstance?.descripcion}">
				<li class="fieldcontain">
					<span id="descripcion-label" class="property-label"><g:message code="publicacion.descripcion.label" default="Descripcion" /></span>
					
						<span class="property-value" aria-labelledby="descripcion-label"><g:fieldValue bean="${publicacionInstance}" field="descripcion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${publicacionInstance?.tiraje}">
				<li class="fieldcontain">
					<span id="tiraje-label" class="property-label"><g:message code="publicacion.tiraje.label" default="Tiraje" /></span>
					
						<span class="property-value" aria-labelledby="tiraje-label"><g:fieldValue bean="${publicacionInstance}" field="tiraje"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${publicacionInstance?.fechaImpresion}">
				<li class="fieldcontain">
					<span id="fechaImpresion-label" class="property-label"><g:message code="publicacion.fechaImpresion.label" default="Fecha Impresion" /></span>
					
						<span class="property-value" aria-labelledby="fechaImpresion-label"><g:formatDate date="${publicacionInstance?.fechaImpresion}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${publicacionInstance?.fechaPublicacion}">
				<li class="fieldcontain">
					<span id="fechaPublicacion-label" class="property-label"><g:message code="publicacion.fechaPublicacion.label" default="Fecha Publicacion" /></span>
					
						<span class="property-value" aria-labelledby="fechaPublicacion-label"><g:formatDate date="${publicacionInstance?.fechaPublicacion}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${publicacionInstance?.fechaReparto}">
				<li class="fieldcontain">
					<span id="fechaReparto-label" class="property-label"><g:message code="publicacion.fechaReparto.label" default="Fecha Reparto" /></span>
					
						<span class="property-value" aria-labelledby="fechaReparto-label"><g:formatDate date="${publicacionInstance?.fechaReparto}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${publicacionInstance?.fase}">
				<li class="fieldcontain">
					<span id="fase-label" class="property-label"><g:message code="publicacion.fase.label" default="Fase" /></span>
					
						<span class="property-value" aria-labelledby="fase-label"><g:fieldValue bean="${publicacionInstance}" field="fase"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${publicacionInstance?.espacios}">
				<li class="fieldcontain">
					<span id="espacios-label" class="property-label"><g:message code="publicacion.espacios.label" default="Espacios" /></span>
					
						<g:each in="${publicacionInstance.espacios}" var="e">
						<span class="property-value" aria-labelledby="espacios-label"><g:link controller="espacioPublicitario" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${publicacionInstance?.municipiosAlcance}">
				<li class="fieldcontain">
					<span id="municipiosAlcance-label" class="property-label"><g:message code="publicacion.municipiosAlcance.label" default="Municipios Alcance" /></span>
					
						<g:each in="${publicacionInstance.municipiosAlcance}" var="m">
						<span class="property-value" aria-labelledby="municipiosAlcance-label"><g:link controller="municipio" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${publicacionInstance?.id}" />
					<g:link class="edit" action="edit" id="${publicacionInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
