<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">
                <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.min.css')}" type="text/css">
		<g:layoutHead/>
		<r:layoutResources />
                <style type="text/css">
                 .banner-encoinfo{background: url("${resource(dir: 'images', file: 'banner-encoinfo.png')}"); }
                 .title-hello{color: #975757 !important;}
                 a {font-size: 23px; font-weight: bold;}
                </style>
	</head>
	<body>
          <div class="container">
            <div class="navbar">
              <div class="navbar-inner">
                <ul class="nav">
                  <li class="active"><a href="#">Home</a></li>
                  <li><a href="#">Palestras</a></li>
                  <li><a href="#">Artigos</a></li> 
                  <li><a href="#">Palestrantes</a></li>
                </ul>
              </div>
            </div>
            <div class="hero-unit banner-encoinfo">
              <h1 class="title-hello">Hello Encoinfo!</h1>
              <p> Este é o nosso nosso primeiro projeto no minicurso de Grails</p>
            </div>

            <g:layoutBody/>
            <footer role="contentinfo" class="footer">
              Encoinfo 2013
            </footer>
            <div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
          </div>
          <script src="js/libs/jquery-1.9.1.js"></script>
          <script src="js/libs/bootstrap.min.js"></script>
          <script>
        
          </script>
          <script src="js/libs/jquery-1.9.1.js"></script>
          <g:javascript library="application"/>
          <r:layoutResources />
	</body>
</html>
