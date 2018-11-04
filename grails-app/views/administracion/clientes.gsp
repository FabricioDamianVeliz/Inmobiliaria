<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
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
            text-align: center;
            top: -300px;
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

          <h1 class="logo">Consultas no leidas</h1>

              <table class="tabla" border="1">

              <tr>
                <th scope="col">nombre</th>
                <th scope="col">apellido</th>
                <th scope="col">telefono</th>
                <th scope="col">email</th>
                <th scope="col">comentario</th>
                <th scope="col">estado</th>
              </tr>
                <g:each in="${listadoConsultas?}">
                      <tr>

                        <td>${it.nombre}</td>
                        <td>${it.apellido}</td>
                        <td>${it.telefono}</td>
                        <td>${it.email}</td>
                        <td>${it.comentario}</td>
                        <td>${it.estado}</td>

                        </tr>
                  </g:each>
                </table>
        </section>
    </div>
</body>
</html>
