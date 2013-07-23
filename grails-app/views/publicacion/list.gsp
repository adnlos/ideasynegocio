
<%@ page import="com.ideasynegocios.business.Publicacion" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'publicacion.label', default: 'Publicacion')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-publicacion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-publicacion" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="numeroPublicacion" title="${message(code: 'publicacion.numeroPublicacion.label', default: 'Numero Publicacion')}" />
					
						<g:sortableColumn property="nombre" title="${message(code: 'publicacion.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="descripcion" title="${message(code: 'publicacion.descripcion.label', default: 'Descripcion')}" />
					
						<g:sortableColumn property="tiraje" title="${message(code: 'publicacion.tiraje.label', default: 'Tiraje')}" />
					
						<g:sortableColumn property="fechaImpresion" title="${message(code: 'publicacion.fechaImpresion.label', default: 'Fecha Impresion')}" />
					
						<g:sortableColumn property="fechaPublicacion" title="${message(code: 'publicacion.fechaPublicacion.label', default: 'Fecha Publicacion')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${publicacionInstanceList}" status="i" var="publicacionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${publicacionInstance.id}">${fieldValue(bean: publicacionInstance, field: "numeroPublicacion")}</g:link></td>
					
						<td>${fieldValue(bean: publicacionInstance, field: "nombre")}</td>
					
						<td>${fieldValue(bean: publicacionInstance, field: "descripcion")}</td>
					
						<td>${fieldValue(bean: publicacionInstance, field: "tiraje")}</td>
					
						<td><g:formatDate date="${publicacionInstance.fechaImpresion}" /></td>
					
						<td><g:formatDate date="${publicacionInstance.fechaPublicacion}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${publicacionInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
