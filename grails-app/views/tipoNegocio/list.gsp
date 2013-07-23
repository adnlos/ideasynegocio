
<%@ page import="com.ideasynegocios.business.TipoNegocio" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tipoNegocio.label', default: 'TipoNegocio')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-tipoNegocio" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-tipoNegocio" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="tipoNegocio" title="${message(code: 'tipoNegocio.tipoNegocio.label', default: 'Tipo Negocio')}" />
					
						<g:sortableColumn property="descripcion" title="${message(code: 'tipoNegocio.descripcion.label', default: 'Descripcion')}" />
					
						<g:sortableColumn property="color" title="${message(code: 'tipoNegocio.color.label', default: 'Color')}" />
					
						<g:sortableColumn property="rutaImagen" title="${message(code: 'tipoNegocio.rutaImagen.label', default: 'Ruta Imagen')}" />
					
						<g:sortableColumn property="topImage" title="${message(code: 'tipoNegocio.topImage.label', default: 'Top Image')}" />
					
						<g:sortableColumn property="leftImage" title="${message(code: 'tipoNegocio.leftImage.label', default: 'Left Image')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${tipoNegocioInstanceList}" status="i" var="tipoNegocioInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${tipoNegocioInstance.id}">${fieldValue(bean: tipoNegocioInstance, field: "tipoNegocio")}</g:link></td>
					
						<td>${fieldValue(bean: tipoNegocioInstance, field: "descripcion")}</td>
					
						<td>${fieldValue(bean: tipoNegocioInstance, field: "color")}</td>
					
						<td>${fieldValue(bean: tipoNegocioInstance, field: "rutaImagen")}</td>
					
						<td>${fieldValue(bean: tipoNegocioInstance, field: "topImage")}</td>
					
						<td>${fieldValue(bean: tipoNegocioInstance, field: "leftImage")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${tipoNegocioInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
