<%@ page import="com.ideasynegocios.seguridad.UserSec" %>



<div class="fieldcontain ${hasErrors(bean: userSecInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="userSec.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${userSecInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userSecInstance, field: 'apellidoPaterno', 'error')} required">
	<label for="apellidoPaterno">
		<g:message code="userSec.apellidoPaterno.label" default="Apellido Paterno" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellidoPaterno" required="" value="${userSecInstance?.apellidoPaterno}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userSecInstance, field: 'apellidoMaterno', 'error')} ">
	<label for="apellidoMaterno">
		<g:message code="userSec.apellidoMaterno.label" default="Apellido Materno" />
		
	</label>
	<g:textField name="apellidoMaterno" value="${userSecInstance?.apellidoMaterno}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userSecInstance, field: 'sexo', 'error')} required">
	<label for="sexo">
		<g:message code="userSec.sexo.label" default="Sexo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="sexo" from="${userSecInstance.constraints.sexo.inList}" required="" value="${userSecInstance?.sexo}" valueMessagePrefix="userSec.sexo"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userSecInstance, field: 'calle', 'error')} ">
	<label for="calle">
		<g:message code="userSec.calle.label" default="Calle" />
		
	</label>
	<g:textField name="calle" value="${userSecInstance?.calle}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userSecInstance, field: 'colonia', 'error')} ">
	<label for="colonia">
		<g:message code="userSec.colonia.label" default="Colonia" />
		
	</label>
	<g:select id="colonia" name="colonia.id" from="${com.ideasynegocios.general.Colonia.list()}" optionKey="id" value="${userSecInstance?.colonia?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userSecInstance, field: 'codigoPostal', 'error')} ">
	<label for="codigoPostal">
		<g:message code="userSec.codigoPostal.label" default="Codigo Postal" />
		
	</label>
	<g:textField name="codigoPostal" value="${userSecInstance?.codigoPostal}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userSecInstance, field: 'noExt', 'error')} ">
	<label for="noExt">
		<g:message code="userSec.noExt.label" default="No Ext" />
		
	</label>
	<g:textField name="noExt" value="${userSecInstance?.noExt}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userSecInstance, field: 'noInt', 'error')} ">
	<label for="noInt">
		<g:message code="userSec.noInt.label" default="No Int" />
		
	</label>
	<g:textField name="noInt" value="${userSecInstance?.noInt}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userSecInstance, field: 'referencia', 'error')} ">
	<label for="referencia">
		<g:message code="userSec.referencia.label" default="Referencia" />
		
	</label>
	<g:textField name="referencia" value="${userSecInstance?.referencia}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userSecInstance, field: 'telefono', 'error')} ">
	<label for="telefono">
		<g:message code="userSec.telefono.label" default="Telefono" />
		
	</label>
	<g:textField name="telefono" value="${userSecInstance?.telefono}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userSecInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="userSec.email.label" default="Email" />
		
	</label>
	<g:field type="email" name="email" value="${userSecInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userSecInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="userSec.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${userSecInstance?.username}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userSecInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="userSec.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${userSecInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userSecInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired">
		<g:message code="userSec.accountExpired.label" default="Account Expired" />
		
	</label>
	<g:checkBox name="accountExpired" value="${userSecInstance?.accountExpired}" />
</div>

<div class="fieldcontain ${hasErrors(bean: userSecInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
		<g:message code="userSec.accountLocked.label" default="Account Locked" />
		
	</label>
	<g:checkBox name="accountLocked" value="${userSecInstance?.accountLocked}" />
</div>

<div class="fieldcontain ${hasErrors(bean: userSecInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="userSec.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${userSecInstance?.enabled}" />
</div>

<div class="fieldcontain ${hasErrors(bean: userSecInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="userSec.passwordExpired.label" default="Password Expired" />
		
	</label>
	<g:checkBox name="passwordExpired" value="${userSecInstance?.passwordExpired}" />
</div>

