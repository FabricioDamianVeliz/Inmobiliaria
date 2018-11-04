
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="author" content="Colorlib">
    <meta name="description" content="#">
    <meta name="keywords" content="#">

    <title>SIGAI</title>

</head>

<body>


                              <h2>Consulta</h2><br>

                                <g:form controller="administracion" action="guardarConsulta" method="post">
                                <br><br>
                                  <label for="nombre">Nombre:</label> <input type="text" id="nombre" name="nombre"/>
                                <br><br>
                                  <label for="apellido">Apellido:</label> <input type="text" id="apellido" name="apellido"/>
                                <br><br>
                                  <label for="telefono">Telefono:</label> <input type="text" id="telefono" name="telefono"/>
                                <br><br>
                                  <label for="domicilio">Domicilio:</label> <input type="text" id="domicilio" name="domicilio"/>
                                <br><br>
                                  <label for="email">Email:</label> <input type="text" id="email" name="email"/>
                                <br><br>
                                  <label for="comentario">Comentario:</label> <textarea class="form-control" rows="5" id="comentario" name="comentario"></textarea>
                                <br><br>
                                <input type="submit" class="btn btn-default" name="enviar" value="Enviar"/>
                                <br><br>
                                <button type="reset" class="btn btn-default">Borrar Datos<button/>
                                </g:form>

</body>

</html>
