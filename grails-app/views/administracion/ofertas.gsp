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

      <h4 class="logo">PROPIEDADES EN VENTA </h4>

        <table>
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
          </table>
</body>
</html>