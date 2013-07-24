<%@ page import="com.ideasynegocios.business.Negocio" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'negocio.label', default: 'Negocio')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#create-negocio" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="create-negocio" class="content scaffold-create" role="main">
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${negocioInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${negocioInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form action="save" enctype="multipart/form-data" >
				<fieldset class="form">				
					<div class="fieldcontain ${hasErrors(bean: negocioInstance, field: 'nombre', 'error')} required">
						<label for="nombre">
							<g:message code="negocio.nombre.label" default="Nombre" />
							<span class="required-indicator">*</span>
						</label>
						<g:textField name="nombre" required="" value="${negocioInstance?.nombre}"/>
					</div>

					<div class="fieldcontain ${hasErrors(bean: negocioInstance, field: 'nombreFormal', 'error')} ">
						<label for="nombreFormal">
							<g:message code="negocio.nombreFormal.label" default="Nombre Formal" />
							
						</label>
						<g:textField name="nombreFormal" value="${negocioInstance?.nombreFormal}"/>
					</div>

					<div class="fieldcontain ${hasErrors(bean: negocioInstance, field: 'tipoNegocio', 'error')} required">
						<label for="tipoNegocio">
							<g:message code="negocio.tipoNegocio.label" default="Tipo Negocio" />
							<span class="required-indicator">*</span>
						</label>
						<g:select id="tipoNegocio" name="tipoNegocio.id" from="${com.ideasynegocios.business.TipoNegocio.list()}" optionKey="id" required="" value="${negocioInstance?.tipoNegocio?.id}" class="many-to-one"/>
					</div>

					<div class="fieldcontain ${hasErrors(bean: negocioInstance, field: 'colonia', 'error')} required">
						<label for="colonia">
							<g:message code="negocio.colonia.label" default="Colonia" />
							<span class="required-indicator">*</span>
						</label>
						<g:select id="colonia" name="colonia.id" from="${com.ideasynegocios.general.Colonia.list()}" optionKey="id" required="" value="${negocioInstance?.colonia?.id}" class="many-to-one"/>
					</div>

					<div class="fieldcontain ${hasErrors(bean: negocioInstance, field: 'calle', 'error')} required">
						<label for="calle">
							<g:message code="negocio.calle.label" default="Calle" />
							<span class="required-indicator">*</span>
						</label>
						<g:textField name="calle" required="" value="${negocioInstance?.calle}"/>
					</div>

					<div class="fieldcontain ${hasErrors(bean: negocioInstance, field: 'noExterior', 'error')} required">
						<label for="noExterior">
							<g:message code="negocio.noExterior.label" default="No Exterior" />
							<span class="required-indicator">*</span>
						</label>
						<g:textField name="noExterior" required="" value="${negocioInstance?.noExterior}"/>
					</div>

					<div class="fieldcontain ${hasErrors(bean: negocioInstance, field: 'noInterior', 'error')} ">
						<label for="noInterior">
							<g:message code="negocio.noInterior.label" default="No Interior" />
							
						</label>
						<g:textField name="noInterior" value="${negocioInstance?.noInterior}"/>
					</div>

					<div class="fieldcontain ${hasErrors(bean: negocioInstance, field: 'codigoPostal', 'error')} ">
						<label for="codigoPostal">
							<g:message code="negocio.codigoPostal.label" default="Codigo Postal" />
							
						</label>
						<g:textField name="codigoPostal" value="${negocioInstance?.codigoPostal}"/>
					</div>

					<div class="fieldcontain ${hasErrors(bean: negocioInstance, field: 'referencia', 'error')} ">
						<label for="referencia">
							<g:message code="negocio.referencia.label" default="Referencia" />
							
						</label>
						<g:textField name="referencia" value="${negocioInstance?.referencia}"/>
					</div>

					<div class="fieldcontain ${hasErrors(bean: negocioInstance, field: 'telefono', 'error')} ">
						<label for="telefono">
							<g:message code="negocio.telefono.label" default="Telefono" />
							
						</label>
						<g:textField name="telefono" value="${negocioInstance?.telefono}"/>
					</div>

					<div class="fieldcontain ${hasErrors(bean: negocioInstance, field: 'email', 'error')} ">
						<label for="email">
							<g:message code="negocio.email.label" default="Email" />
							
						</label>
						<g:field type="email" name="email" value="${negocioInstance?.email}"/>
					</div>

					<div class="fieldcontain ${hasErrors(bean: negocioInstance, field: 'latitud', 'error')} ">
						<label for="latitud">
							<g:message code="negocio.latitud.label" default="Latitud" />
							
						</label>
						<g:textField name="latitud" value="${negocioInstance?.latitud}"/>
					</div>

					<div class="fieldcontain ${hasErrors(bean: negocioInstance, field: 'longitud', 'error')} ">
						<label for="longitud">
							<g:message code="negocio.longitud.label" default="Longitud" />
							
						</label>
						<g:textField name="longitud" value="${negocioInstance?.longitud}"/>
					</div>

					<div class="fieldcontain ${hasErrors(bean: negocioInstance, field: 'fechaContacto', 'error')} required">
						<label for="fechaContacto">
							<g:message code="negocio.fechaContacto.label" default="Fecha Contacto" />
							<span class="required-indicator">*</span>
						</label>
						<g:datePicker name="fechaContacto" precision="day"  value="${negocioInstance?.fechaContacto}"  />
					</div>

					<div class="fieldcontain ${hasErrors(bean: negocioInstance, field: 'fechaInicioRelacion', 'error')} ">
						<label for="fechaInicioRelacion">
							<g:message code="negocio.fechaInicioRelacion.label" default="Fecha Inicio Relacion" />
							
						</label>
						<g:datePicker name="fechaInicioRelacion" precision="day"  value="${negocioInstance?.fechaInicioRelacion}" default="none" noSelection="['': '']" />
					</div>

					<div class="fieldcontain ${hasErrors(bean: negocioInstance, field: 'fechaSuspension', 'error')} ">
						<label for="fechaSuspension">
							<g:message code="negocio.fechaSuspension.label" default="Fecha Suspension" />
							
						</label>
						<g:datePicker name="fechaSuspension" precision="day"  value="${negocioInstance?.fechaSuspension}" default="none" noSelection="['': '']" />
					</div>

					<div class="fieldcontain ${hasErrors(bean: negocioInstance, field: 'fechaBaja', 'error')} ">
						<label for="fechaBaja">
							<g:message code="negocio.fechaBaja.label" default="Fecha Baja" />
							
						</label>
						<g:datePicker name="fechaBaja" precision="day"  value="${negocioInstance?.fechaBaja}" default="none" noSelection="['': '']" />
					</div>

					<div class="fieldcontain ${hasErrors(bean: negocioInstance, field: 'estadoAdmin', 'error')} required">
						<label for="estadoAdmin">
							<g:message code="negocio.estadoAdmin.label" default="Estado Admin" />
							<span class="required-indicator">*</span>
						</label>
						<g:select name="estadoAdmin" from="${negocioInstance.constraints.estadoAdmin.inList}" required="" value="${negocioInstance?.estadoAdmin}" valueMessagePrefix="negocio.estadoAdmin"/>
					</div>

					<div class="fieldcontain ${hasErrors(bean: negocioInstance, field: 'contactoNegocio', 'error')} ">
						<label for="contactoNegocio">
							<g:message code="negocio.contactoNegocio.label" default="Contacto Negocio" />
							
						</label>
						<g:select id="contactoNegocio" name="contactoNegocio.id" from="${com.ideasynegocios.business.ContactoNegocio.list()}" optionKey="id" value="${negocioInstance?.contactoNegocio?.id}" class="many-to-one" noSelection="['null': '']"/>
					</div>

					<div class="fieldcontain ${hasErrors(bean: negocioInstance, field: 'personaRecluto', 'error')} ">
						<label for="personaRecluto">
							<g:message code="negocio.personaRecluto.label" default="Persona Recluto" />
							
						</label>
						<g:select id="personaRecluto" name="personaRecluto.id" from="${com.ideasynegocios.seguridad.UserSec.list()}" optionKey="id" value="${negocioInstance?.personaRecluto?.id}" class="many-to-one" noSelection="['null': '']"/>
					</div>

					<div class="fieldcontain ${hasErrors(bean: negocioInstance, field: 'facebook', 'error')} ">
						<label for="facebook">
							<g:message code="negocio.facebook.label" default="Facebook" />
							
						</label>
						<g:textField name="facebook" value="${negocioInstance?.facebook}"/>
					</div>

					imagenes
					<div class="fieldcontain ${hasErrors(bean: negocioInstance, field: 'imagenPrincipal', 'error')} ">
					<label for="imagenPrincipal">
						<g:message code="negocio.imagenPrincipal.label" default="Imagen Principal" />
					</label>
					<input type="file" name="imagenPrincipal" id="imagenPrincipal">
					</div>

					<div class="fieldcontain ${hasErrors(bean: negocioInstance, field: 'imagenSecundaria', 'error')} ">
						<label for="imagenSecundaria">
							<g:message code="negocio.imagenSecundaria.label" default="Imagen Secundaria" />
						</label>
						<input type="file" name="imagenSecundaria" id="imagenSecundaria">
					</div>

				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
