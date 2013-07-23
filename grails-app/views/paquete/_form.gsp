<%@ page import="com.ideasynegocios.business.Paquete" %>



<div class="fieldcontain ${hasErrors(bean: paqueteInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="paquete.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${paqueteInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: paqueteInstance, field: 'descripcion', 'error')} required">
	<label for="descripcion">
		<g:message code="paquete.descripcion.label" default="Descripcion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descripcion" required="" value="${paqueteInstance?.descripcion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: paqueteInstance, field: 'prioridad', 'error')} required">
	<label for="prioridad">
		<g:message code="paquete.prioridad.label" default="Prioridad" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="prioridad" type="number" value="${paqueteInstance.prioridad}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: paqueteInstance, field: 'precioReferencia', 'error')} required">
	<label for="precioReferencia">
		<g:message code="paquete.precioReferencia.label" default="Precio Referencia" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="precioReferencia" value="${fieldValue(bean: paqueteInstance, field: 'precioReferencia')}" required=""/>
</div>

