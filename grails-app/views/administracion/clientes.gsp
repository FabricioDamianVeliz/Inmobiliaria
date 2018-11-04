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
        <h2 class="logo"> Consultas no leidas </h2>
    </div>






        <table border="1">

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
</body>
</html>
