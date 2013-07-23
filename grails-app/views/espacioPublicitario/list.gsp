
<%@ page import="com.ideasynegocios.business.EspacioPublicitario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'espacioPublicitario.label', default: 'EspacioPublicitario')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-espacioPublicitario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-espacioPublicitario" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="espacioPublicitario.negocio.label" default="Negocio" /></th>
					
						<th><g:message code="espacioPublicitario.paquete.label" default="Paquete" /></th>
					
						<g:sortableColumn property="precioFinal" title="${message(code: 'espacioPublicitario.precioFinal.label', default: 'Precio Final')}" />
					
						<g:sortableColumn property="fase" title="${message(code: 'espacioPublicitario.fase.label', default: 'Fase')}" />
					
						<g:sortableColumn property="rutaRevista" title="${message(code: 'espacioPublicitario.rutaRevista.label', default: 'Ruta Revista')}" />
					
						<g:sortableColumn property="rutaBanner" title="${message(code: 'espacioPublicitario.rutaBanner.label', default: 'Ruta Banner')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${espacioPublicitarioInstanceList}" status="i" var="espacioPublicitarioInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${espacioPublicitarioInstance.id}">${fieldValue(bean: espacioPublicitarioInstance, field: "negocio")}</g:link></td>
					
						<td>${fieldValue(bean: espacioPublicitarioInstance, field: "paquete")}</td>
					
						<td>${fieldValue(bean: espacioPublicitarioInstance, field: "precioFinal")}</td>
					
						<td>${fieldValue(bean: espacioPublicitarioInstance, field: "fase")}</td>
					
						<td>${fieldValue(bean: espacioPublicitarioInstance, field: "rutaRevista")}</td>
					
						<td>${fieldValue(bean: espacioPublicitarioInstance, field: "rutaBanner")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${espacioPublicitarioInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
