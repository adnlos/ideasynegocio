<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<title>Ideas y Negocios</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name = "description" content="entuliga"/>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}" type="image/x-icon">
		<link rel="stylesheet" type="text/css" href="${resource(dir: 'css', file: 'reset.css')}">
		<link rel="stylesheet" type="text/css" href="${resource(dir: 'css', file: 'navMenu.css')}">
		<link rel="stylesheet" type="text/css" href="${resource(dir: 'css', file: 'main.css')}">
		<!-- <g:javascript src="jquery.min.js"/> -->
		<g:javascript src="jquery-ui.min.js"/>
		<g:javascript src="jquery-1.9.0.js"/>
		<g:layoutHead/>
		<r:layoutResources />
	</head>
	<g:javascript>
		$(function(){
			console.log("Jquery");
		});
	</g:javascript>
	<body>
		<header>
			<nav>
				<div id="nav-logo" class="logo-0">
					<a href="#mixquiahuala"></a>
				</div>
				<ul>
					<li id="nav-mixquiahuala">
						<a href="#mixquiahuala">
							<div class="imgMunicipio">
								<img src="${resource(dir: '/images/municipios/', file: 'mixquiahuala.png')}">
							</div>
							<p>
								Mixquiahuala
							</p>
						</a>
					</li>
					<li id="nav-progreso">
						<a href="#progreso">
							<div class="imgMunicipio">
								<img src="${resource(dir: '/images/municipios/', file: 'progreso.png')}">
							</div>
							<p>
								Progreso
							</p>
						</a>
					</li>
					<li id="nav-tezontepec">
						<a href="#tezontepec">
							<div class="imgMunicipio">
								<img src="${resource(dir: '/images/municipios/', file: 'tezontepec.png')}">
							</div>
							<p>
								Tezontepec
							</p>
						</a>
					</li>
					<li id="nav-chilcuautla">
						<a href="#chilcuautla">
							<div class="imgMunicipio">
								<img src="${resource(dir: '/images/municipios/', file: 'chilcuautla.png')}">
							</div>
							<p>
								Chilcuautla
							</p>
						</a>
					</li>
				</ul>	 
			</nav>
		</header>

		<section id="wrapper">
			<g:layoutBody/>
		</section>
		<footer>
			
		</footer>
		<g:javascript library="application"/>
		<r:layoutResources />

		<g:javascript src="jquery.plugins.js"/>
		<g:javascript src="jquery.colorbox.js"/>
		<g:javascript src="jquery.cross-slide.js"/>
		<g:javascript src="jquery.onePageMenu.js"/>
		<g:javascript src="jquery.scripts.js"/>

	</body>
</html>
