<%@ page import="com.ideasynegocios.seguridad.Persona" %>



<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="persona.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${personaInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'apellidoPaterno', 'error')} required">
	<label for="apellidoPaterno">
		<g:message code="persona.apellidoPaterno.label" default="Apellido Paterno" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellidoPaterno" required="" value="${personaInstance?.apellidoPaterno}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'apellidoMaterno', 'error')} ">
	<label for="apellidoMaterno">
		<g:message code="persona.apellidoMaterno.label" default="Apellido Materno" />
		
	</label>
	<g:textField name="apellidoMaterno" value="${personaInstance?.apellidoMaterno}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'sexo', 'error')} required">
	<label for="sexo">
		<g:message code="persona.sexo.label" default="Sexo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="sexo" from="${personaInstance.constraints.sexo.inList}" required="" value="${personaInstance?.sexo}" valueMessagePrefix="persona.sexo"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'calle', 'error')} ">
	<label for="calle">
		<g:message code="persona.calle.label" default="Calle" />
		
	</label>
	<g:textField name="calle" value="${personaInstance?.calle}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'colonia', 'error')} ">
	<label for="colonia">
		<g:message code="persona.colonia.label" default="Colonia" />
		
	</label>
	<g:select id="colonia" name="colonia.id" from="${com.ideasynegocios.general.Colonia.list()}" optionKey="id" value="${personaInstance?.colonia?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'codigoPostal', 'error')} ">
	<label for="codigoPostal">
		<g:message code="persona.codigoPostal.label" default="Codigo Postal" />
		
	</label>
	<g:textField name="codigoPostal" value="${personaInstance?.codigoPostal}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'noExt', 'error')} ">
	<label for="noExt">
		<g:message code="persona.noExt.label" default="No Ext" />
		
	</label>
	<g:textField name="noExt" value="${personaInstance?.noExt}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'noInt', 'error')} ">
	<label for="noInt">
		<g:message code="persona.noInt.label" default="No Int" />
		
	</label>
	<g:textField name="noInt" value="${personaInstance?.noInt}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'referencia', 'error')} ">
	<label for="referencia">
		<g:message code="persona.referencia.label" default="Referencia" />
		
	</label>
	<g:textField name="referencia" value="${personaInstance?.referencia}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'telefono', 'error')} ">
	<label for="telefono">
		<g:message code="persona.telefono.label" default="Telefono" />
		
	</label>
	<g:textField name="telefono" value="${personaInstance?.telefono}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="persona.email.label" default="Email" />
		
	</label>
	<g:field type="email" name="email" value="${personaInstance?.email}"/>
</div>

