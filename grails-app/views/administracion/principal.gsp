<!DOCTYPE html>
<html lang="en">
<head>
    <title>SIGAI</title>
    <g:if env="development"><asset:stylesheet src="estilos.css"/></g:if>
</head>
<body>

  <header class="header">
      <div class="contenedor">
          <h1 class="logo"> SIGAI </h1>
          <h2 class="logo"> MENU </h2>

          <nav class="nav" id="nav"></nav>
              <ul class="menu">
                <li><g:link controller="administracion" action="ventas">Ventas</g:link></li>
                <li><g:link controller="administracion" action="alquiler">Alquiler</g:link></li>
                <li><g:link controller="login" action="login">Iniciar sesion</g:link></li>

              </ul>
      </div>
  </header>

  <div class="banner">
      <asset:image src="1.jpg" class="banner__img"/>
      <div class="contenedor">
        <br>
          <h2 class="b1">Lo mejor a tu alcance</h2>
          <p class="b2">Vive en el lugar de tus sueños</p>

        <br>
        <h2 class="logo"> OFERTAS </h2>
        <table>
        <g:each in="${listadoOfertas?}">
                <tr>
                  <td>${it.categoria}</td>
                  <td>${it.calle}</td>
                  <td>${it.numero}</td>
                  <td>${it.barrio}</td>
                  <td>${it.localidad}</td>
                  <td>${it.ciudad}</td>
                  <td>${it.superficie}</td>
                  <td>${it.cantBanios}</td>
                  <td>${it.cantDormitorio}</td>
                  <td>${it.rubroLocal}</td>
                  <td>${it.piso}</td>
                  <td>${it.nDepartamento}</td>
                  <td>${it.precio}</td>
                </tr>
        </g:each>
        </table> 
      </div>
  </div>

</body>
</html>
