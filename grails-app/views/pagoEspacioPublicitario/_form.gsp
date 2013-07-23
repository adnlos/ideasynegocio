<%@ page import="com.ideasynegocios.business.PagoEspacioPublicitario" %>



<div class="fieldcontain ${hasErrors(bean: pagoEspacioPublicitarioInstance, field: 'fase', 'error')} required">
	<label for="fase">
		<g:message code="pagoEspacioPublicitario.fase.label" default="Fase" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="fase" from="${pagoEspacioPublicitarioInstance.constraints.fase.inList}" required="" value="${pagoEspacioPublicitarioInstance?.fase}" valueMessagePrefix="pagoEspacioPublicitario.fase"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pagoEspacioPublicitarioInstance, field: 'total', 'error')} required">
	<label for="total">
		<g:message code="pagoEspacioPublicitario.total.label" default="Total" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="total" value="${fieldValue(bean: pagoEspacioPublicitarioInstance, field: 'total')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: pagoEspacioPublicitarioInstance, field: 'date', 'error')} required">
	<label for="date">
		<g:message code="pagoEspacioPublicitario.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="date" precision="day"  value="${pagoEspacioPublicitarioInstance?.date}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: pagoEspacioPublicitarioInstance, field: 'notas', 'error')} ">
	<label for="notas">
		<g:message code="pagoEspacioPublicitario.notas.label" default="Notas" />
		
	</label>
	<g:textField name="notas" value="${pagoEspacioPublicitarioInstance?.notas}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pagoEspacioPublicitarioInstance, field: 'espacioPublicitario', 'error')} required">
	<label for="espacioPublicitario">
		<g:message code="pagoEspacioPublicitario.espacioPublicitario.label" default="Espacio Publicitario" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="espacioPublicitario" name="espacioPublicitario.id" from="${com.ideasynegocios.business.EspacioPublicitario.list()}" optionKey="id" required="" value="${pagoEspacioPublicitarioInstance?.espacioPublicitario?.id}" class="many-to-one"/>
</div>

