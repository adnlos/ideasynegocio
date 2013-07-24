<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<span>Controladores del negocio</span>
	<ul>
		<g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
			<li class="controller"><g:link controller="${c.logicalPropertyName}">${c.naturalName}</g:link></li>
		</g:each>
	</ul>
</body>
</html>