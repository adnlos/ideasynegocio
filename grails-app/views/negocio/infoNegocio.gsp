<!DOCTYPE html>
<html>
<head>
	<title>info Negocio</title>
</head>
<body>

Nombre del negocio: ${negocioInstance.nombre} <br>
Nombre Formal: ${negocioInstance?.nombreFormal}<br>
Tipo de negocio: ${negocioInstance?.tipoNegocio} <br>
Direccion completa: ${negocioInstance.direccionCompleta} <br>
Colonia: ${negocioInstance.colonia} <br>
Calle: ${negocioInstance.calle} <br>
Numero Exterior: ${negocioInstance.noExterior} <br>
Numero Interior: ${negocioInstance.noInterior} <br>
Codigo Postal: ${negocioInstance.codigoPostal} <br>
Email: ${negocioInstance.email} <br>
Referencia: ${negocioInstance.referencia} <br>
Telefono: ${negocioInstance.telefono} <br>

Fecha contacto: ${negocioInstance.fechaContacto} <br>
Fecha Inicio relacion: ${negocioInstance.fechaInicioRelacion} <br>
Fecha suspencion: ${negocioInstance.fechaSuspension} <br>
Fecha baja: ${negocioInstance.fechaBaja} <br>
Persona Recluto: ${negocioInstance.personaRecluto} <br>
Estado Administrador: ${negocioInstance.estadoAdmin} <br>
Facebook: ${negocioInstance.facebook} <br>


imagen
<img  src="${createLink(controller:'negocio', action:'imagen', id:negocioInstance?.id)}" />	
</body>
</html>
