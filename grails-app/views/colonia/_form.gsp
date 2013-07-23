<%@ page import="com.ideasynegocios.general.Colonia" %>



<div class="fieldcontain ${hasErrors(bean: coloniaInstance, field: 'nombreCompleto', 'error')} required">
	<label for="nombreCompleto">
		<g:message code="colonia.nombreCompleto.label" default="Nombre Completo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombreCompleto" required="" value="${coloniaInstance?.nombreCompleto}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: coloniaInstance, field: 'tipoColonia', 'error')} required">
	<label for="tipoColonia">
		<g:message code="colonia.tipoColonia.label" default="Tipo Colonia" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="tipoColonia" required="" value="${coloniaInstance?.tipoColonia}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: coloniaInstance, field: 'municipio', 'error')} required">
	<label for="municipio">
		<g:message code="colonia.municipio.label" default="Municipio" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="municipio" name="municipio.id" from="${com.ideasynegocios.general.Municipio.list()}" optionKey="id" required="" value="${coloniaInstance?.municipio?.id}" class="many-to-one"/>
</div>

