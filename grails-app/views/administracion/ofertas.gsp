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




      <h4 class="logo">PROPIEDADES EN OFERTA </h4>

        <table border="1">

        <tr>
          <th scope="col">categoria</th>
          <th scope="col">calle</th>
          <th scope="col">numero</th>
          <th scope="col">barrio</th>
          <th scope="col">localidad</th>
          <th scope="col">ciudad</th>
          <th scope="col">superficie</th>
          <th scope="col">precio</th>
          <th scope="col">rubro</th>
          <th scope="col">cant de Baños</th>
          <th scope="col">Cant de Dormitorio</th>
          <th scope="col">Num de Departamento</th>

        </tr>
          <g:each in="${listado?}">
                <tr>
                  <td><g:link action="create" controller="Clientes">${it.categoria}</g:link></td>
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

                  </tr>
            </g:each>
          </table>
</body>
</html>
