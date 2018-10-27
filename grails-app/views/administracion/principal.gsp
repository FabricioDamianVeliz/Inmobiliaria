<!DOCTYPE html>
<html lang="en">
<head>

    <title>SIGAI</title>
    <g:if env="development"><asset:stylesheet src="ESTILOS.css"/></g:if>


</head>
<body>


    <header class="header">
        <div class="contenedor">
            <h1 class="logo"> SIGAI </h1>
        </div>
    </header>


    <div class="contenedor">
        <h2 class="logo"> OFERTAS </h2>
    </div>

      <h4 class="logo">PROPIEDADES EN VENTA </h4>
        <table>
        <g:each in="${listadoventas?}">
                <tr>
                  <td>${it.categoria}</td>
                  <td>${it.calle}</td>
                  <td>${it.numero}</td>
                  <td>${it.barrio}</td>
                  <td>${it.localidad}</td>
                  <td>${it.ciudad}</td>
                  <td>${it.superficie}</td>
                  <td>${it.cantBanio}</td>
                  <td>${it.cantDormitorio}</td>
                  <td>${it.rubroLocal}</td>
                  <td>${it.piso}</td>
                  <td>${it.nDepartamento}</td>
                  <td>${it.precio}</td>
                  
                </tr>
            </g:each>
          </table>

      <h4 class="logo"> PROPIEDADES EN ALQUILERES </h4>
      <table>
        <g:each in="${listadoalquiler?}">
              <tr>
                <td>${it.categoria}</td>
                <td>${it.calle}</td>
                <td>${it.numero}</td>
                <td>${it.barrio}</td>
                <td>${it.localidad}</td>
                <td>${it.ciudad}</td>
                <td>${it.superficie}</td>
                <td>${it.cantBanio}</td>
                <td>${it.cantDormitorio}</td>
                <td>${it.rubroLocal}</td>
                <td>${it.piso}</td>
                <td>${it.nDepartamento}</td>
                <td>${it.precio}</td>

              </tr>
        </g:each>
      </table>


</body>
</html>
