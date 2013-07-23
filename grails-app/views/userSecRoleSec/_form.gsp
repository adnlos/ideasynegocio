<%@ page import="com.ideasynegocios.seguridad.UserSecRoleSec" %>



<div class="fieldcontain ${hasErrors(bean: userSecRoleSecInstance, field: 'roleSec', 'error')} required">
	<label for="roleSec">
		<g:message code="userSecRoleSec.roleSec.label" default="Role Sec" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="roleSec" name="roleSec.id" from="${com.ideasynegocios.seguridad.RoleSec.list()}" optionKey="id" required="" value="${userSecRoleSecInstance?.roleSec?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userSecRoleSecInstance, field: 'userSec', 'error')} required">
	<label for="userSec">
		<g:message code="userSecRoleSec.userSec.label" default="User Sec" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="userSec" name="userSec.id" from="${com.ideasynegocios.seguridad.UserSec.list()}" optionKey="id" required="" value="${userSecRoleSecInstance?.userSec?.id}" class="many-to-one"/>
</div>

