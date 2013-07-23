
<%@ page import="com.ideasynegocios.business.Negocio" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'negocio.label', default: 'Negocio')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-negocio" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-negocio" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="nombre" title="${message(code: 'negocio.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="nombreFormal" title="${message(code: 'negocio.nombreFormal.label', default: 'Nombre Formal')}" />
					
						<th><g:message code="negocio.tipoNegocio.label" default="Tipo Negocio" /></th>
					
						<th><g:message code="negocio.colonia.label" default="Colonia" /></th>
					
						<g:sortableColumn property="calle" title="${message(code: 'negocio.calle.label', default: 'Calle')}" />
					
						<g:sortableColumn property="noExterior" title="${message(code: 'negocio.noExterior.label', default: 'No Exterior')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${negocioInstanceList}" status="i" var="negocioInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${negocioInstance.id}">${fieldValue(bean: negocioInstance, field: "nombre")}</g:link></td>
					
						<td>${fieldValue(bean: negocioInstance, field: "nombreFormal")}</td>
					
						<td>${fieldValue(bean: negocioInstance, field: "tipoNegocio")}</td>
					
						<td>${fieldValue(bean: negocioInstance, field: "colonia")}</td>
					
						<td>${fieldValue(bean: negocioInstance, field: "calle")}</td>
					
						<td>${fieldValue(bean: negocioInstance, field: "noExterior")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${negocioInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
