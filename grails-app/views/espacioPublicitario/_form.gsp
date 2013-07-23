<%@ page import="com.ideasynegocios.business.EspacioPublicitario" %>



<div class="fieldcontain ${hasErrors(bean: espacioPublicitarioInstance, field: 'negocio', 'error')} required">
	<label for="negocio">
		<g:message code="espacioPublicitario.negocio.label" default="Negocio" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="negocio" name="negocio.id" from="${com.ideasynegocios.business.Negocio.list()}" optionKey="id" required="" value="${espacioPublicitarioInstance?.negocio?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: espacioPublicitarioInstance, field: 'paquete', 'error')} required">
	<label for="paquete">
		<g:message code="espacioPublicitario.paquete.label" default="Paquete" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="paquete" name="paquete.id" from="${com.ideasynegocios.business.Paquete.list()}" optionKey="id" required="" value="${espacioPublicitarioInstance?.paquete?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: espacioPublicitarioInstance, field: 'precioFinal', 'error')} required">
	<label for="precioFinal">
		<g:message code="espacioPublicitario.precioFinal.label" default="Precio Final" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="precioFinal" value="${fieldValue(bean: espacioPublicitarioInstance, field: 'precioFinal')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: espacioPublicitarioInstance, field: 'fase', 'error')} required">
	<label for="fase">
		<g:message code="espacioPublicitario.fase.label" default="Fase" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="fase" from="${espacioPublicitarioInstance.constraints.fase.inList}" required="" value="${espacioPublicitarioInstance?.fase}" valueMessagePrefix="espacioPublicitario.fase"/>
</div>

<div class="fieldcontain ${hasErrors(bean: espacioPublicitarioInstance, field: 'rutaRevista', 'error')} ">
	<label for="rutaRevista">
		<g:message code="espacioPublicitario.rutaRevista.label" default="Ruta Revista" />
		
	</label>
	<g:textField name="rutaRevista" value="${espacioPublicitarioInstance?.rutaRevista}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: espacioPublicitarioInstance, field: 'rutaBanner', 'error')} ">
	<label for="rutaBanner">
		<g:message code="espacioPublicitario.rutaBanner.label" default="Ruta Banner" />
		
	</label>
	<g:textField name="rutaBanner" value="${espacioPublicitarioInstance?.rutaBanner}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: espacioPublicitarioInstance, field: 'rutaPreview', 'error')} ">
	<label for="rutaPreview">
		<g:message code="espacioPublicitario.rutaPreview.label" default="Ruta Preview" />
		
	</label>
	<g:textField name="rutaPreview" value="${espacioPublicitarioInstance?.rutaPreview}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: espacioPublicitarioInstance, field: 'fechaContacto', 'error')} required">
	<label for="fechaContacto">
		<g:message code="espacioPublicitario.fechaContacto.label" default="Fecha Contacto" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaContacto" precision="day"  value="${espacioPublicitarioInstance?.fechaContacto}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: espacioPublicitarioInstance, field: 'pagos', 'error')} ">
	<label for="pagos">
		<g:message code="espacioPublicitario.pagos.label" default="Pagos" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${espacioPublicitarioInstance?.pagos?}" var="p">
    <li><g:link controller="pagoEspacioPublicitario" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="pagoEspacioPublicitario" action="create" params="['espacioPublicitario.id': espacioPublicitarioInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'pagoEspacioPublicitario.label', default: 'PagoEspacioPublicitario')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: espacioPublicitarioInstance, field: 'publicacion', 'error')} required">
	<label for="publicacion">
		<g:message code="espacioPublicitario.publicacion.label" default="Publicacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="publicacion" name="publicacion.id" from="${com.ideasynegocios.business.Publicacion.list()}" optionKey="id" required="" value="${espacioPublicitarioInstance?.publicacion?.id}" class="many-to-one"/>
</div>

