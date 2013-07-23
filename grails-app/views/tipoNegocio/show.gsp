
<%@ page import="com.ideasynegocios.business.TipoNegocio" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tipoNegocio.label', default: 'TipoNegocio')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-tipoNegocio" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-tipoNegocio" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list tipoNegocio">
			
				<g:if test="${tipoNegocioInstance?.tipoNegocio}">
				<li class="fieldcontain">
					<span id="tipoNegocio-label" class="property-label"><g:message code="tipoNegocio.tipoNegocio.label" default="Tipo Negocio" /></span>
					
						<span class="property-value" aria-labelledby="tipoNegocio-label"><g:fieldValue bean="${tipoNegocioInstance}" field="tipoNegocio"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tipoNegocioInstance?.descripcion}">
				<li class="fieldcontain">
					<span id="descripcion-label" class="property-label"><g:message code="tipoNegocio.descripcion.label" default="Descripcion" /></span>
					
						<span class="property-value" aria-labelledby="descripcion-label"><g:fieldValue bean="${tipoNegocioInstance}" field="descripcion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tipoNegocioInstance?.color}">
				<li class="fieldcontain">
					<span id="color-label" class="property-label"><g:message code="tipoNegocio.color.label" default="Color" /></span>
					
						<span class="property-value" aria-labelledby="color-label"><g:fieldValue bean="${tipoNegocioInstance}" field="color"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tipoNegocioInstance?.rutaImagen}">
				<li class="fieldcontain">
					<span id="rutaImagen-label" class="property-label"><g:message code="tipoNegocio.rutaImagen.label" default="Ruta Imagen" /></span>
					
						<span class="property-value" aria-labelledby="rutaImagen-label"><g:fieldValue bean="${tipoNegocioInstance}" field="rutaImagen"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tipoNegocioInstance?.topImage}">
				<li class="fieldcontain">
					<span id="topImage-label" class="property-label"><g:message code="tipoNegocio.topImage.label" default="Top Image" /></span>
					
						<span class="property-value" aria-labelledby="topImage-label"><g:fieldValue bean="${tipoNegocioInstance}" field="topImage"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tipoNegocioInstance?.leftImage}">
				<li class="fieldcontain">
					<span id="leftImage-label" class="property-label"><g:message code="tipoNegocio.leftImage.label" default="Left Image" /></span>
					
						<span class="property-value" aria-labelledby="leftImage-label"><g:fieldValue bean="${tipoNegocioInstance}" field="leftImage"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${tipoNegocioInstance?.id}" />
					<g:link class="edit" action="edit" id="${tipoNegocioInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
