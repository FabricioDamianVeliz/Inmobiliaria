<!doctype html>
<html>
<head>
    <meta name="layout" content="mainConsulta"/>
    <title>SIGAI</title>
</head>
<body>
    <content tag="nav">
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Application Status <span class="caret"></span></a>
            <ul class="dropdown-menu">
                <li><a href="#">Environment: ${grails.util.Environment.current.name}</a></li>
                <li><a href="#">App profile: ${grailsApplication.config.grails?.profile}</a></li>
                <li><a href="#">App version:
                    <g:meta name="info.app.version"/></a>
                </li>

                <li role="separator" class="divider"></li>
                <li><a href="#">Grails version:
                    <g:meta name="info.app.grailsVersion"/></a>
                </li>
                <li><a href="#">Groovy version: ${GroovySystem.getVersion()}</a></li>
                <li><a href="#">JVM version: ${System.getProperty('java.version')}</a></li>
                <li role="separator" class="divider"></li>
                <li><a href="#">Reloading active: ${grails.util.Environment.reloadingAgentEnabled}</a></li>
            </ul>
        </li>
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Artefacts <span class="caret"></span></a>
            <ul class="dropdown-menu">
                <li><a href="#">Controllers: ${grailsApplication.controllerClasses.size()}</a></li>
                <li><a href="#">Domains: ${grailsApplication.domainClasses.size()}</a></li>
                <li><a href="#">Services: ${grailsApplication.serviceClasses.size()}</a></li>
                <li><a href="#">Tag Libraries: ${grailsApplication.tagLibClasses.size()}</a></li>
            </ul>
        </li>
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Installed Plugins <span class="caret"></span></a>
            <ul class="dropdown-menu">
                <g:each var="plugin" in="${applicationContext.getBean('pluginManager').allPlugins}">
                    <li><a href="#">${plugin.name} - ${plugin.version}</a></li>
                </g:each>
            </ul>
        </li>
    </content>

    <!--  Agregado  -->
    <style>
        .svg .grails-logo-container .grails-logo{
            height: 1200px;
            width: 1540px;
        }
        .navbar-default a{
            color: black !important;
        }
        #content .colset-2-its {
            text-align: left;
            top: -200px;
            left: 50px;
        }
        #content .colset-2-its > h1 {
            margin-top: 0px;
            font-weight: bold;
        }
        a {
            padding-left: 2px;
            color: #000000;
            text-decoration: none;
        }
        .controller{
            margin: 10px
        }

    </style>
    <!--  FIN Agregado  -->

    <div class="svg" role="presentation">
        <div class="grails-logo-container">
            <asset:image src="1.jpg" class="grails-logo"/>
        </div>
    </div>

    <div id="content" role="main" class="re">
        <section class="row colset-2-its">
          <h1>Consulta</h1><br>

          <g:form controller="administracion" action="guardarConsulta" method="post">
            <br><br>
            <!--<label for="nombre">Propiedad:</label> <input type="text" id="nombre" name="nombre"/>
            <br><br>-->
              <label for="nombre">Nombre:</label> <input type="text" id="nombre" name="nombre"/>
            <br><br>
              <label for="apellido">Apellido:</label> <input type="text" id="apellido" name="apellido"/>
            <br><br>
              <label for="telefono">Telefono:</label> <input type="text" id="telefono" name="telefono"/>
            <br><br>
              <label for="domicilio">Domicilio:</label> <input type="text" id="domicilio" name="domicilio"/>
            <br><br>
              <label for="email">Email:</label> <input type="text" id="email" name="email"/>
            <br><br>
              <label for="comentario">Comentario:</label> <textarea class="form-control" rows="5" id="comentario" name="comentario"></textarea>
            <br><br>
            <input type="submit" class="btn btn-default" name="enviar" value="Enviar"/>
            <br><br>
            <button type="reset" class="btn btn-default">Borrar Datos</button>
          </g:form>
        </section>
    </div>
</body>
</html>
