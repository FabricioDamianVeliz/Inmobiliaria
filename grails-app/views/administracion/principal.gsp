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

                <g:form action="ventas1">
                       <li>Rubro: <g:field type="text" name="rubro"/></li>
                       <li>Localidad: <g:field type="text" name="localidad"/></li>
                       <li>Barrio: <g:field type="text" name="barrio"/></li>
                     <g:submitButton name="submit" value="Buscar"/>
                   </g:form>
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
        <table border="1/2">
          <tr>
            <th scope="col">categoria</th>
            <th scope="col">rubro</th>
            <th scope="col">calle</th>
            <th scope="col">numero</th>
            <th scope="col">barrio</th>
            <th scope="col">localidad</th>
            <th scope="col">ciudad</th>
            <th scope="col">superficie</th>
            <th scope="col">cant de Baños</th>
            <th scope="col">Cant de Dormitorio</th>
            <th scope="col">Num de Piso</th>
            <th scope="col">Num de Departamento</th>
            <th scope="col">precio</th>
          </tr>
        <g:each in="${listadoOfertas?}">
                <tr>
                  <td>${it.categoria}</td>
                  <td>${it.rubro}</td>
                  <td>${it.calle}</td>
                  <td>${it.numero}</td>
                  <td>${it.barrio}</td>
                  <td>${it.localidad}</td>
                  <td>${it.ciudad}</td>
                  <td>${it.superficie}</td>
                  <td>${it.cantBanios}</td>
                  <td>${it.cantDormitorio}</td>
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
