<!DOCTYPE html>
<html lang="en">
<head>
    <title>SIGAI</title>
    <g:if env="development"><asset:stylesheet src="estilos.css"/></g:if>
</head>
<body>
    <header class="header">
        <div class="contenedor">
            <h1 class="logo">SIGAI</h1>
        </div>
    </header>

    <div class="contenedor">
        <h2 class="logo"> OFERTAS </h2>
    </div>



      <li><g:link controller="administracion" action="ofertas">Listado</g:link></li>


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
      <li><g:link controller="administracion" action="ventanaAdministrador">Ingresar como administrador</g:link></li>

</body>
</html>
