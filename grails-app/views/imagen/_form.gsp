<%@ page import="com.ideasynegocios.general.Imagen" %>



<div class="fieldcontain ${hasErrors(bean: imagenInstance, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="imagen.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" maxlength="64" value="${imagenInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: imagenInstance, field: 'tipoContenido', 'error')} ">
	<label for="tipoContenido">
		<g:message code="imagen.tipoContenido.label" default="Tipo Contenido" />
		
	</label>
	<g:textField name="tipoContenido" maxlength="64" value="${imagenInstance?.tipoContenido}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: imagenInstance, field: 'tamano', 'error')} ">
	<label for="tamano">
		<g:message code="imagen.tamano.label" default="Tamano" />
		
	</label>
	<g:field name="tamano" type="number" value="${imagenInstance.tamano}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: imagenInstance, field: 'archivo', 'error')} ">
	<label for="archivo">
		<g:message code="imagen.archivo.label" default="Archivo" />
		
	</label>
	<input type="file" id="archivo" name="archivo" />
</div>

