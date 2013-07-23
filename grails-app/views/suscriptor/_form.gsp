<%@ page import="com.ideasynegocios.business.Suscriptor" %>



<div class="fieldcontain ${hasErrors(bean: suscriptorInstance, field: 'tipoReparto', 'error')} required">
	<label for="tipoReparto">
		<g:message code="suscriptor.tipoReparto.label" default="Tipo Reparto" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="tipoReparto" from="${suscriptorInstance.constraints.tipoReparto.inList}" required="" value="${suscriptorInstance?.tipoReparto}" valueMessagePrefix="suscriptor.tipoReparto"/>
</div>

<div class="fieldcontain ${hasErrors(bean: suscriptorInstance, field: 'medioSuscripcion', 'error')} required">
	<label for="medioSuscripcion">
		<g:message code="suscriptor.medioSuscripcion.label" default="Medio Suscripcion" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="medioSuscripcion" from="${suscriptorInstance.constraints.medioSuscripcion.inList}" required="" value="${suscriptorInstance?.medioSuscripcion}" valueMessagePrefix="suscriptor.medioSuscripcion"/>
</div>

<div class="fieldcontain ${hasErrors(bean: suscriptorInstance, field: 'fechaSuscripcion', 'error')} required">
	<label for="fechaSuscripcion">
		<g:message code="suscriptor.fechaSuscripcion.label" default="Fecha Suscripcion" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaSuscripcion" precision="day"  value="${suscriptorInstance?.fechaSuscripcion}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: suscriptorInstance, field: 'fechaSuspension', 'error')} ">
	<label for="fechaSuspension">
		<g:message code="suscriptor.fechaSuspension.label" default="Fecha Suspension" />
		
	</label>
	<g:datePicker name="fechaSuspension" precision="day"  value="${suscriptorInstance?.fechaSuspension}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: suscriptorInstance, field: 'fechaBaja', 'error')} ">
	<label for="fechaBaja">
		<g:message code="suscriptor.fechaBaja.label" default="Fecha Baja" />
		
	</label>
	<g:datePicker name="fechaBaja" precision="day"  value="${suscriptorInstance?.fechaBaja}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: suscriptorInstance, field: 'estadoAdmin', 'error')} required">
	<label for="estadoAdmin">
		<g:message code="suscriptor.estadoAdmin.label" default="Estado Admin" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="estadoAdmin" from="${suscriptorInstance.constraints.estadoAdmin.inList}" required="" value="${suscriptorInstance?.estadoAdmin}" valueMessagePrefix="suscriptor.estadoAdmin"/>
</div>

