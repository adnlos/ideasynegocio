<%@ page import="com.ideasynegocios.business.ImagenNegocio" %>



<div class="fieldcontain ${hasErrors(bean: imagenNegocioInstance, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="imagenNegocio.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" maxlength="64" value="${imagenNegocioInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: imagenNegocioInstance, field: 'tipoContenido', 'error')} ">
	<label for="tipoContenido">
		<g:message code="imagenNegocio.tipoContenido.label" default="Tipo Contenido" />
		
	</label>
	<g:textField name="tipoContenido" maxlength="64" value="${imagenNegocioInstance?.tipoContenido}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: imagenNegocioInstance, field: 'tamano', 'error')} ">
	<label for="tamano">
		<g:message code="imagenNegocio.tamano.label" default="Tamano" />
		
	</label>
	<g:field name="tamano" type="number" value="${imagenNegocioInstance.tamano}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: imagenNegocioInstance, field: 'archivo', 'error')} ">
	<label for="archivo">
		<g:message code="imagenNegocio.archivo.label" default="Archivo" />
		
	</label>
	<input type="file" id="archivo" name="archivo" />
</div>

<div class="fieldcontain ${hasErrors(bean: imagenNegocioInstance, field: 'negocio', 'error')} required">
	<label for="negocio">
		<g:message code="imagenNegocio.negocio.label" default="Negocio" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="negocio" name="negocio.id" from="${com.ideasynegocios.business.Negocio.list()}" optionKey="id" required="" value="${imagenNegocioInstance?.negocio?.id}" class="many-to-one"/>
</div>

