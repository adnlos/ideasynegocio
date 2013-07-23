
<%@ page import="com.ideasynegocios.business.Paquete" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'paquete.label', default: 'Paquete')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-paquete" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-paquete" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="nombre" title="${message(code: 'paquete.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="descripcion" title="${message(code: 'paquete.descripcion.label', default: 'Descripcion')}" />
					
						<g:sortableColumn property="prioridad" title="${message(code: 'paquete.prioridad.label', default: 'Prioridad')}" />
					
						<g:sortableColumn property="precioReferencia" title="${message(code: 'paquete.precioReferencia.label', default: 'Precio Referencia')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${paqueteInstanceList}" status="i" var="paqueteInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${paqueteInstance.id}">${fieldValue(bean: paqueteInstance, field: "nombre")}</g:link></td>
					
						<td>${fieldValue(bean: paqueteInstance, field: "descripcion")}</td>
					
						<td>${fieldValue(bean: paqueteInstance, field: "prioridad")}</td>
					
						<td>${fieldValue(bean: paqueteInstance, field: "precioReferencia")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${paqueteInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
