<%@ page import="com.ideasynegocios.seguridad.RoleSec" %>



<div class="fieldcontain ${hasErrors(bean: roleSecInstance, field: 'authority', 'error')} required">
	<label for="authority">
		<g:message code="roleSec.authority.label" default="Authority" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="authority" required="" value="${roleSecInstance?.authority}"/>
</div>

