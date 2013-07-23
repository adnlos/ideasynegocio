
<%@ page import="com.ideasynegocios.seguridad.UserSecRoleSec" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'userSecRoleSec.label', default: 'UserSecRoleSec')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-userSecRoleSec" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-userSecRoleSec" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list userSecRoleSec">
			
				<g:if test="${userSecRoleSecInstance?.roleSec}">
				<li class="fieldcontain">
					<span id="roleSec-label" class="property-label"><g:message code="userSecRoleSec.roleSec.label" default="Role Sec" /></span>
					
						<span class="property-value" aria-labelledby="roleSec-label"><g:link controller="roleSec" action="show" id="${userSecRoleSecInstance?.roleSec?.id}">${userSecRoleSecInstance?.roleSec?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${userSecRoleSecInstance?.userSec}">
				<li class="fieldcontain">
					<span id="userSec-label" class="property-label"><g:message code="userSecRoleSec.userSec.label" default="User Sec" /></span>
					
						<span class="property-value" aria-labelledby="userSec-label"><g:link controller="userSec" action="show" id="${userSecRoleSecInstance?.userSec?.id}">${userSecRoleSecInstance?.userSec?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${userSecRoleSecInstance?.id}" />
					<g:link class="edit" action="edit" id="${userSecRoleSecInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
