
<%@ page import="com.ideasynegocios.seguridad.UserSec" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'userSec.label', default: 'UserSec')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-userSec" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-userSec" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="nombre" title="${message(code: 'userSec.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="apellidoPaterno" title="${message(code: 'userSec.apellidoPaterno.label', default: 'Apellido Paterno')}" />
					
						<g:sortableColumn property="apellidoMaterno" title="${message(code: 'userSec.apellidoMaterno.label', default: 'Apellido Materno')}" />
					
						<g:sortableColumn property="sexo" title="${message(code: 'userSec.sexo.label', default: 'Sexo')}" />
					
						<g:sortableColumn property="calle" title="${message(code: 'userSec.calle.label', default: 'Calle')}" />
					
						<th><g:message code="userSec.colonia.label" default="Colonia" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${userSecInstanceList}" status="i" var="userSecInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${userSecInstance.id}">${fieldValue(bean: userSecInstance, field: "nombre")}</g:link></td>
					
						<td>${fieldValue(bean: userSecInstance, field: "apellidoPaterno")}</td>
					
						<td>${fieldValue(bean: userSecInstance, field: "apellidoMaterno")}</td>
					
						<td>${fieldValue(bean: userSecInstance, field: "sexo")}</td>
					
						<td>${fieldValue(bean: userSecInstance, field: "calle")}</td>
					
						<td>${fieldValue(bean: userSecInstance, field: "colonia")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${userSecInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
