<%@ page import="com.ideasynegocios.business.TipoNegocio" %>



<div class="fieldcontain ${hasErrors(bean: tipoNegocioInstance, field: 'tipoNegocio', 'error')} required">
	<label for="tipoNegocio">
		<g:message code="tipoNegocio.tipoNegocio.label" default="Tipo Negocio" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="tipoNegocio" required="" value="${tipoNegocioInstance?.tipoNegocio}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tipoNegocioInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="tipoNegocio.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textField name="descripcion" value="${tipoNegocioInstance?.descripcion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tipoNegocioInstance, field: 'color', 'error')} ">
	<label for="color">
		<g:message code="tipoNegocio.color.label" default="Color" />
		
	</label>
	<g:textField name="color" value="${tipoNegocioInstance?.color}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tipoNegocioInstance, field: 'rutaImagen', 'error')} ">
	<label for="rutaImagen">
		<g:message code="tipoNegocio.rutaImagen.label" default="Ruta Imagen" />
		
	</label>
	<g:textField name="rutaImagen" value="${tipoNegocioInstance?.rutaImagen}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tipoNegocioInstance, field: 'topImage', 'error')} ">
	<label for="topImage">
		<g:message code="tipoNegocio.topImage.label" default="Top Image" />
		
	</label>
	<g:textField name="topImage" value="${tipoNegocioInstance?.topImage}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tipoNegocioInstance, field: 'leftImage', 'error')} ">
	<label for="leftImage">
		<g:message code="tipoNegocio.leftImage.label" default="Left Image" />
		
	</label>
	<g:textField name="leftImage" value="${tipoNegocioInstance?.leftImage}"/>
</div>

