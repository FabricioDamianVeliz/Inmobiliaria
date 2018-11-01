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
                <li><g:link controller="administracion" action="ofertas">Listado de ofertas</g:link></li>
                <li><g:link controller="administracion" action="ventas">Listado de ventas</g:link></li>
                <li><g:link controller="administracion" action="alquiler">Listado de alquiler</g:link></li>
                <li><g:link controller="login" action="login">Iniciar sesion</g:link></li>

              </ul>
      </div>
  </header>

  <div class="banner">
      <asset:image src="1.jpg" class="banner__img"/>
      <div class="contenedor">
          <h2 class="b1">Lo mejor a tu alcance</h2>
          <p class="b2">Vive en el lugar de tus sueños</p>
      </div>
  </div>

      <!--<table>
        <tr>
          <th>Calle</th>
          <th>Numero</th>
          <th>Barrio</th>
          <th>Localidad</th>
          <th>Ciudad</th>
          <th>Superficie</th>
          <th>Precio</th>
          <th>Rubro</th>
          <th>cantBanios</th>
          <th>cantDormitorio</th>
          <th>nDepartamento</th>
          <th>Categoria</th>
          <th>Estado</th>

        </tr>
          <g:each in="${listado?}">
              <tr>
                <td>${it.calle}</td>
                <td>${it.numero}</td>
                <td>${it.barrio}</td>
                <td>${it.localidad}</td>
                <td>${it.ciudad}</td>
                <td>${it.superficie}</td>
                <td>${it.precio}</td>
                <td>${it.rubro}</td>
                <td>${it.cantBanios}</td>
                <td>${it.cantDormitorio}</td>
                <td>${it.nDepartamento}</td>
                <td>${it.categoria}</td>
                <td>${it.estado}</td>
              </tr>
          </g:each>
      </table>-->


</body>
</html>
