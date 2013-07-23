
<%@ page import="com.ideasynegocios.business.Suscriptor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'suscriptor.label', default: 'Suscriptor')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-suscriptor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-suscriptor" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="tipoReparto" title="${message(code: 'suscriptor.tipoReparto.label', default: 'Tipo Reparto')}" />
					
						<g:sortableColumn property="medioSuscripcion" title="${message(code: 'suscriptor.medioSuscripcion.label', default: 'Medio Suscripcion')}" />
					
						<g:sortableColumn property="fechaSuscripcion" title="${message(code: 'suscriptor.fechaSuscripcion.label', default: 'Fecha Suscripcion')}" />
					
						<g:sortableColumn property="fechaSuspension" title="${message(code: 'suscriptor.fechaSuspension.label', default: 'Fecha Suspension')}" />
					
						<g:sortableColumn property="fechaBaja" title="${message(code: 'suscriptor.fechaBaja.label', default: 'Fecha Baja')}" />
					
						<g:sortableColumn property="estadoAdmin" title="${message(code: 'suscriptor.estadoAdmin.label', default: 'Estado Admin')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${suscriptorInstanceList}" status="i" var="suscriptorInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${suscriptorInstance.id}">${fieldValue(bean: suscriptorInstance, field: "tipoReparto")}</g:link></td>
					
						<td>${fieldValue(bean: suscriptorInstance, field: "medioSuscripcion")}</td>
					
						<td><g:formatDate date="${suscriptorInstance.fechaSuscripcion}" /></td>
					
						<td><g:formatDate date="${suscriptorInstance.fechaSuspension}" /></td>
					
						<td><g:formatDate date="${suscriptorInstance.fechaBaja}" /></td>
					
						<td>${fieldValue(bean: suscriptorInstance, field: "estadoAdmin")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${suscriptorInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
