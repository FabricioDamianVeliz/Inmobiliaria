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
        <h2 class="logo"> Clientes </h2>
    </div>






        <table border="150">

        <tr>
          <th scope="col">nombre</th>
          <th scope="col">apellido</th>
          <th scope="col">dni</th>
          <th scope="col">direccion</th>
          <th scope="col">telefono</th>
          <th scope="col">email</th>
          <th scope="col">comentario</th>
          <th scope="col">estado</th>
        </tr>
          <g:each in="${listadoClientes?}">
                <tr>

                  <td>${it.nombre}</td>
                  <td>${it.apellido}</td>
                  <td>${it.dni}</td>
                  <td>${it.direccion}</td>
                  <td>${it.telefono}</td>
                  <td>${it.email}</td>
                



                  </tr>
            </g:each>
          </table>
</body>
</html>
