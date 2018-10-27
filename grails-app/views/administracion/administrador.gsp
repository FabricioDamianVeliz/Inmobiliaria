<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>SIGAI</title>
    <g:if env="development"><asset:stylesheet src="ESTILOS.css"/></g:if>
    <link href="https://file.myfontastic.com/c2AiGMCLdw9ctSL4Y8aLjj/icons.css" rel="stylesheet">

</head>
<body>

    <header class="header">
        <div class="contenedor">
            <h1 class="logo"> SIGAI </h1>

            <nav class="nav" id="nav"></nav>
                <ul class="menu">
                    <li class="menu__item"><g:link controller="administracion" action="propiedades">PROPIEDADES</g:link></li>
                    <li class="menu__item"><g:link controller="administracion" action="propiedades">VENTAS</g:link></li>
                    <li class="menu__item"><g:link controller="administracion" action="propiedades">ALQUILER</g:link></li>
                    <li class="menu__item"><g:link controller="administracion" action="propiedades">QUEJAS</g:link></li>
                    <li class="menu__item"><g:link controller="administracion" action="propiedades">USUARIOS</g:link></li>

                </ul>
              
        </div>
    </header>

    <div class="banner">
        <img src="1.jpg" alt="" class="banner__img">
        <div class="contenedor">
            <h2 class="b1">Lo mejor a tu alcance</h2>
            <p class="b2">Vive en el lugar de tus sueños</p>
        </div>

    </div>

</body>
</html>
