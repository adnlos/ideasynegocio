
<%@ page import="com.ideasynegocios.business.PagoEspacioPublicitario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pagoEspacioPublicitario.label', default: 'PagoEspacioPublicitario')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-pagoEspacioPublicitario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-pagoEspacioPublicitario" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="fase" title="${message(code: 'pagoEspacioPublicitario.fase.label', default: 'Fase')}" />
					
						<g:sortableColumn property="total" title="${message(code: 'pagoEspacioPublicitario.total.label', default: 'Total')}" />
					
						<g:sortableColumn property="date" title="${message(code: 'pagoEspacioPublicitario.date.label', default: 'Date')}" />
					
						<g:sortableColumn property="notas" title="${message(code: 'pagoEspacioPublicitario.notas.label', default: 'Notas')}" />
					
						<th><g:message code="pagoEspacioPublicitario.espacioPublicitario.label" default="Espacio Publicitario" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${pagoEspacioPublicitarioInstanceList}" status="i" var="pagoEspacioPublicitarioInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${pagoEspacioPublicitarioInstance.id}">${fieldValue(bean: pagoEspacioPublicitarioInstance, field: "fase")}</g:link></td>
					
						<td>${fieldValue(bean: pagoEspacioPublicitarioInstance, field: "total")}</td>
					
						<td><g:formatDate date="${pagoEspacioPublicitarioInstance.date}" /></td>
					
						<td>${fieldValue(bean: pagoEspacioPublicitarioInstance, field: "notas")}</td>
					
						<td>${fieldValue(bean: pagoEspacioPublicitarioInstance, field: "espacioPublicitario")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${pagoEspacioPublicitarioInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
