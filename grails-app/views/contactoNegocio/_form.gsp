<%@ page import="com.ideasynegocios.business.ContactoNegocio" %>



<div class="fieldcontain ${hasErrors(bean: contactoNegocioInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="contactoNegocio.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${contactoNegocioInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactoNegocioInstance, field: 'apellidoPaterno', 'error')} required">
	<label for="apellidoPaterno">
		<g:message code="contactoNegocio.apellidoPaterno.label" default="Apellido Paterno" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellidoPaterno" required="" value="${contactoNegocioInstance?.apellidoPaterno}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactoNegocioInstance, field: 'apellidoMaterno', 'error')} ">
	<label for="apellidoMaterno">
		<g:message code="contactoNegocio.apellidoMaterno.label" default="Apellido Materno" />
		
	</label>
	<g:textField name="apellidoMaterno" value="${contactoNegocioInstance?.apellidoMaterno}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactoNegocioInstance, field: 'sexo', 'error')} required">
	<label for="sexo">
		<g:message code="contactoNegocio.sexo.label" default="Sexo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="sexo" from="${contactoNegocioInstance.constraints.sexo.inList}" required="" value="${contactoNegocioInstance?.sexo}" valueMessagePrefix="contactoNegocio.sexo"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactoNegocioInstance, field: 'calle', 'error')} ">
	<label for="calle">
		<g:message code="contactoNegocio.calle.label" default="Calle" />
		
	</label>
	<g:textField name="calle" value="${contactoNegocioInstance?.calle}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactoNegocioInstance, field: 'colonia', 'error')} ">
	<label for="colonia">
		<g:message code="contactoNegocio.colonia.label" default="Colonia" />
		
	</label>
	<g:select id="colonia" name="colonia.id" from="${com.ideasynegocios.general.Colonia.list()}" optionKey="id" value="${contactoNegocioInstance?.colonia?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactoNegocioInstance, field: 'codigoPostal', 'error')} ">
	<label for="codigoPostal">
		<g:message code="contactoNegocio.codigoPostal.label" default="Codigo Postal" />
		
	</label>
	<g:textField name="codigoPostal" value="${contactoNegocioInstance?.codigoPostal}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactoNegocioInstance, field: 'noExt', 'error')} ">
	<label for="noExt">
		<g:message code="contactoNegocio.noExt.label" default="No Ext" />
		
	</label>
	<g:textField name="noExt" value="${contactoNegocioInstance?.noExt}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactoNegocioInstance, field: 'noInt', 'error')} ">
	<label for="noInt">
		<g:message code="contactoNegocio.noInt.label" default="No Int" />
		
	</label>
	<g:textField name="noInt" value="${contactoNegocioInstance?.noInt}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactoNegocioInstance, field: 'referencia', 'error')} ">
	<label for="referencia">
		<g:message code="contactoNegocio.referencia.label" default="Referencia" />
		
	</label>
	<g:textField name="referencia" value="${contactoNegocioInstance?.referencia}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactoNegocioInstance, field: 'telefono', 'error')} ">
	<label for="telefono">
		<g:message code="contactoNegocio.telefono.label" default="Telefono" />
		
	</label>
	<g:textField name="telefono" value="${contactoNegocioInstance?.telefono}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactoNegocioInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="contactoNegocio.email.label" default="Email" />
		
	</label>
	<g:field type="email" name="email" value="${contactoNegocioInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactoNegocioInstance, field: 'negocio', 'error')} required">
	<label for="negocio">
		<g:message code="contactoNegocio.negocio.label" default="Negocio" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="negocio" name="negocio.id" from="${com.ideasynegocios.business.Negocio.list()}" optionKey="id" required="" value="${contactoNegocioInstance?.negocio?.id}" class="many-to-one"/>
</div>

