<%@ page import="com.ideasynegocios.business.Publicacion" %>



<div class="fieldcontain ${hasErrors(bean: publicacionInstance, field: 'numeroPublicacion', 'error')} required">
	<label for="numeroPublicacion">
		<g:message code="publicacion.numeroPublicacion.label" default="Numero Publicacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numeroPublicacion" type="number" value="${publicacionInstance.numeroPublicacion}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: publicacionInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="publicacion.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${publicacionInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: publicacionInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="publicacion.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textField name="descripcion" value="${publicacionInstance?.descripcion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: publicacionInstance, field: 'tiraje', 'error')} required">
	<label for="tiraje">
		<g:message code="publicacion.tiraje.label" default="Tiraje" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="tiraje" value="${fieldValue(bean: publicacionInstance, field: 'tiraje')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: publicacionInstance, field: 'fechaImpresion', 'error')} required">
	<label for="fechaImpresion">
		<g:message code="publicacion.fechaImpresion.label" default="Fecha Impresion" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaImpresion" precision="day"  value="${publicacionInstance?.fechaImpresion}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: publicacionInstance, field: 'fechaPublicacion', 'error')} required">
	<label for="fechaPublicacion">
		<g:message code="publicacion.fechaPublicacion.label" default="Fecha Publicacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaPublicacion" precision="day"  value="${publicacionInstance?.fechaPublicacion}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: publicacionInstance, field: 'fechaReparto', 'error')} required">
	<label for="fechaReparto">
		<g:message code="publicacion.fechaReparto.label" default="Fecha Reparto" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaReparto" precision="day"  value="${publicacionInstance?.fechaReparto}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: publicacionInstance, field: 'fase', 'error')} required">
	<label for="fase">
		<g:message code="publicacion.fase.label" default="Fase" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="fase" from="${publicacionInstance.constraints.fase.inList}" required="" value="${publicacionInstance?.fase}" valueMessagePrefix="publicacion.fase"/>
</div>

<div class="fieldcontain ${hasErrors(bean: publicacionInstance, field: 'espacios', 'error')} ">
	<label for="espacios">
		<g:message code="publicacion.espacios.label" default="Espacios" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${publicacionInstance?.espacios?}" var="e">
    <li><g:link controller="espacioPublicitario" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="espacioPublicitario" action="create" params="['publicacion.id': publicacionInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'espacioPublicitario.label', default: 'EspacioPublicitario')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: publicacionInstance, field: 'municipiosAlcance', 'error')} ">
	<label for="municipiosAlcance">
		<g:message code="publicacion.municipiosAlcance.label" default="Municipios Alcance" />
		
	</label>
	<g:select name="municipiosAlcance" from="${com.ideasynegocios.general.Municipio.list()}" multiple="multiple" optionKey="id" size="5" value="${publicacionInstance?.municipiosAlcance*.id}" class="many-to-many"/>
</div>

