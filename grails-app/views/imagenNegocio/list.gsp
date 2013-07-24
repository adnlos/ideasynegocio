
<%@ page import="com.ideasynegocios.business.ImagenNegocio" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'imagenNegocio.label', default: 'ImagenNegocio')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-imagenNegocio" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-imagenNegocio" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="nombre" title="${message(code: 'imagenNegocio.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="tipoContenido" title="${message(code: 'imagenNegocio.tipoContenido.label', default: 'Tipo Contenido')}" />
					
						<g:sortableColumn property="tamano" title="${message(code: 'imagenNegocio.tamano.label', default: 'Tamano')}" />
					
						<g:sortableColumn property="archivo" title="${message(code: 'imagenNegocio.archivo.label', default: 'Archivo')}" />
					
						<th><g:message code="imagenNegocio.negocio.label" default="Negocio" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${imagenNegocioInstanceList}" status="i" var="imagenNegocioInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${imagenNegocioInstance.id}">${fieldValue(bean: imagenNegocioInstance, field: "nombre")}</g:link></td>
					
						<td>${fieldValue(bean: imagenNegocioInstance, field: "tipoContenido")}</td>
					
						<td>${fieldValue(bean: imagenNegocioInstance, field: "tamano")}</td>
					
						<td>${fieldValue(bean: imagenNegocioInstance, field: "archivo")}</td>
					
						<td>${fieldValue(bean: imagenNegocioInstance, field: "negocio")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${imagenNegocioInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
