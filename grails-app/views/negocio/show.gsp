
<%@ page import="com.ideasynegocios.business.Negocio" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'negocio.label', default: 'Negocio')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-negocio" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-negocio" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list negocio">
			
				<g:if test="${negocioInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="negocio.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${negocioInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${negocioInstance?.nombreFormal}">
				<li class="fieldcontain">
					<span id="nombreFormal-label" class="property-label"><g:message code="negocio.nombreFormal.label" default="Nombre Formal" /></span>
					
						<span class="property-value" aria-labelledby="nombreFormal-label"><g:fieldValue bean="${negocioInstance}" field="nombreFormal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${negocioInstance?.tipoNegocio}">
				<li class="fieldcontain">
					<span id="tipoNegocio-label" class="property-label"><g:message code="negocio.tipoNegocio.label" default="Tipo Negocio" /></span>
					
						<span class="property-value" aria-labelledby="tipoNegocio-label"><g:link controller="tipoNegocio" action="show" id="${negocioInstance?.tipoNegocio?.id}">${negocioInstance?.tipoNegocio?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${negocioInstance?.colonia}">
				<li class="fieldcontain">
					<span id="colonia-label" class="property-label"><g:message code="negocio.colonia.label" default="Colonia" /></span>
					
						<span class="property-value" aria-labelledby="colonia-label"><g:link controller="colonia" action="show" id="${negocioInstance?.colonia?.id}">${negocioInstance?.colonia?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${negocioInstance?.calle}">
				<li class="fieldcontain">
					<span id="calle-label" class="property-label"><g:message code="negocio.calle.label" default="Calle" /></span>
					
						<span class="property-value" aria-labelledby="calle-label"><g:fieldValue bean="${negocioInstance}" field="calle"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${negocioInstance?.noExterior}">
				<li class="fieldcontain">
					<span id="noExterior-label" class="property-label"><g:message code="negocio.noExterior.label" default="No Exterior" /></span>
					
						<span class="property-value" aria-labelledby="noExterior-label"><g:fieldValue bean="${negocioInstance}" field="noExterior"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${negocioInstance?.noInterior}">
				<li class="fieldcontain">
					<span id="noInterior-label" class="property-label"><g:message code="negocio.noInterior.label" default="No Interior" /></span>
					
						<span class="property-value" aria-labelledby="noInterior-label"><g:fieldValue bean="${negocioInstance}" field="noInterior"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${negocioInstance?.codigoPostal}">
				<li class="fieldcontain">
					<span id="codigoPostal-label" class="property-label"><g:message code="negocio.codigoPostal.label" default="Codigo Postal" /></span>
					
						<span class="property-value" aria-labelledby="codigoPostal-label"><g:fieldValue bean="${negocioInstance}" field="codigoPostal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${negocioInstance?.referencia}">
				<li class="fieldcontain">
					<span id="referencia-label" class="property-label"><g:message code="negocio.referencia.label" default="Referencia" /></span>
					
						<span class="property-value" aria-labelledby="referencia-label"><g:fieldValue bean="${negocioInstance}" field="referencia"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${negocioInstance?.telefono}">
				<li class="fieldcontain">
					<span id="telefono-label" class="property-label"><g:message code="negocio.telefono.label" default="Telefono" /></span>
					
						<span class="property-value" aria-labelledby="telefono-label"><g:fieldValue bean="${negocioInstance}" field="telefono"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${negocioInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="negocio.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${negocioInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${negocioInstance?.latitud}">
				<li class="fieldcontain">
					<span id="latitud-label" class="property-label"><g:message code="negocio.latitud.label" default="Latitud" /></span>
					
						<span class="property-value" aria-labelledby="latitud-label"><g:fieldValue bean="${negocioInstance}" field="latitud"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${negocioInstance?.longitud}">
				<li class="fieldcontain">
					<span id="longitud-label" class="property-label"><g:message code="negocio.longitud.label" default="Longitud" /></span>
					
						<span class="property-value" aria-labelledby="longitud-label"><g:fieldValue bean="${negocioInstance}" field="longitud"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${negocioInstance?.fechaContacto}">
				<li class="fieldcontain">
					<span id="fechaContacto-label" class="property-label"><g:message code="negocio.fechaContacto.label" default="Fecha Contacto" /></span>
					
						<span class="property-value" aria-labelledby="fechaContacto-label"><g:formatDate date="${negocioInstance?.fechaContacto}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${negocioInstance?.fechaInicioRelacion}">
				<li class="fieldcontain">
					<span id="fechaInicioRelacion-label" class="property-label"><g:message code="negocio.fechaInicioRelacion.label" default="Fecha Inicio Relacion" /></span>
					
						<span class="property-value" aria-labelledby="fechaInicioRelacion-label"><g:formatDate date="${negocioInstance?.fechaInicioRelacion}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${negocioInstance?.fechaSuspension}">
				<li class="fieldcontain">
					<span id="fechaSuspension-label" class="property-label"><g:message code="negocio.fechaSuspension.label" default="Fecha Suspension" /></span>
					
						<span class="property-value" aria-labelledby="fechaSuspension-label"><g:formatDate date="${negocioInstance?.fechaSuspension}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${negocioInstance?.fechaBaja}">
				<li class="fieldcontain">
					<span id="fechaBaja-label" class="property-label"><g:message code="negocio.fechaBaja.label" default="Fecha Baja" /></span>
					
						<span class="property-value" aria-labelledby="fechaBaja-label"><g:formatDate date="${negocioInstance?.fechaBaja}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${negocioInstance?.estadoAdmin}">
				<li class="fieldcontain">
					<span id="estadoAdmin-label" class="property-label"><g:message code="negocio.estadoAdmin.label" default="Estado Admin" /></span>
					
						<span class="property-value" aria-labelledby="estadoAdmin-label"><g:fieldValue bean="${negocioInstance}" field="estadoAdmin"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${negocioInstance?.contactoNegocio}">
				<li class="fieldcontain">
					<span id="contactoNegocio-label" class="property-label"><g:message code="negocio.contactoNegocio.label" default="Contacto Negocio" /></span>
					
						<span class="property-value" aria-labelledby="contactoNegocio-label"><g:link controller="contactoNegocio" action="show" id="${negocioInstance?.contactoNegocio?.id}">${negocioInstance?.contactoNegocio?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${negocioInstance?.personaRecluto}">
				<li class="fieldcontain">
					<span id="personaRecluto-label" class="property-label"><g:message code="negocio.personaRecluto.label" default="Persona Recluto" /></span>
					
						<span class="property-value" aria-labelledby="personaRecluto-label"><g:link controller="userSec" action="show" id="${negocioInstance?.personaRecluto?.id}">${negocioInstance?.personaRecluto?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${negocioInstance?.facebook}">
				<li class="fieldcontain">
					<span id="facebook-label" class="property-label"><g:message code="negocio.facebook.label" default="Facebook" /></span>
					
						<span class="property-value" aria-labelledby="facebook-label"><g:fieldValue bean="${negocioInstance}" field="facebook"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${negocioInstance?.imagenPrincipal}">
				<li class="fieldcontain">
					<span id="imagenPrincipal-label" class="property-label"><g:message code="negocio.imagenPrincipal.label" default="Imagen Principal" /></span>
					
						<span class="property-value" aria-labelledby="imagenPrincipal-label"><g:link controller="imagenNegocio" action="show" id="${negocioInstance?.imagenPrincipal?.id}">${negocioInstance?.imagenPrincipal?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${negocioInstance?.imagenSecundaria}">
				<li class="fieldcontain">
					<span id="imagenSecundaria-label" class="property-label"><g:message code="negocio.imagenSecundaria.label" default="Imagen Secundaria" /></span>
					
						<span class="property-value" aria-labelledby="imagenSecundaria-label"><g:link controller="imagenNegocio" action="show" id="${negocioInstance?.imagenSecundaria?.id}">${negocioInstance?.imagenSecundaria?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${negocioInstance?.id}" />
					<g:link class="edit" action="edit" id="${negocioInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
