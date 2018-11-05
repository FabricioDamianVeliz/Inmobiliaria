<!DOCTYPE html>
<html lang="en">

<head>
  <meta name="layout" content="main"/>
</head>

<body>

    <div class="nav-menu">
        <div class="bg transition">
            <div class="container-fluid fixed">
                <div class="row">
                    <div class="col-md-12">
                        <nav class="navbar navbar-expand-lg navbar-light">
                            <a><g:link controller="administracion" action="principal" class="navbar-brand">SIGAI</g:link></a>
                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="icon-menu"></span>
              </button>
                            <div class="collapse navbar-collapse justify-content-end" id="navbarNavDropdown">
                                <ul class="navbar-nav">

                                <!--    <li class="nav-item active">
                                        <a class="nav-link" href="#">Ventas</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">Alquiler</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">Consultas</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">Iniciar Sesion</a>
                                    </li>
                                --->
                                    <li><g:link controller="administracion" action="ventas" class="nav-link">Ventas</g:link></li>
                                    <li><g:link controller="administracion" action="alquiler" class="nav-link">Alquiler</g:link></li>
                                    <li><g:link controller="administracion" action="consulta" class="nav-link">Consulta</g:link></li>

                                    <li><a><g:link controller="login" action="login" class="btn btn-outline-light top-btn">Iniciar Sesion</g:link></a></li>
                                </ul>
                            </div>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- SLIDER -->
    <section class="slider d-flex align-items-center section img-fluid">
        <!-- <img src="images/slider.jpg" class="img-fluid" alt="#"> -->

        <div class="container">
            <div class="row d-flex justify-content-center">
                <div class="col-md-12">
                    <div class="slider-title_box">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="slider-content_wrap">
                                    <h1>Vive en el lugar de tus sueños</h1>
                            
                                </div>
                            </div>
                        </div>
                        <g:form  class="form-wrap mt-4" action="ventasbuscador" >
                        <div class="row d-flex justify-content-center">
                            <div class="col-md-10">

                                    <div class="btn-group" role="group" aria-label="Basic example">

                                            <g:field type="text" name="rubro" placeholder="RUBRO" class="btn-group1"/><br>
                                            <g:field type="text" name="localidad" placeholder="LOCALIDAD" class="btn-group1"/><br>
                                            <g:field type="text" name="barrio" placeholder="BARRIO" class="btn-group1"/><br><br>
                                            <g:submitButton  class="btn-form" name="submit" value="Buscar"/>

                                    </div>


                            </div>
                        </div>
                        </g:form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--// SLIDER -->
    <!--//END HEADER -->


    <!--============================= FEATURED PLACES =============================-->
    <section class="main-block light-bg">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-5">
                    <div class="styled-heading">
                        <h3>Propiedades en Oferta</h3>
                    </div>
                </div>
            </div>
            <div class="row">
                <g:each in="${listadoOfertas?}">

                    <div class="col-md-4 featured-responsive">
                        <div class="featured-place-wrap">
                            <a><g:link controller="administracion" action="consulta">
                                <asset:image src="images/featured1.jpg" class="img-fluid" alt="#"/>
                                <span class="featured-rating-orange">9.5</span>
                                <div class="featured-title-box">
                                    <h6>${it.rubro}</h6>
                                    <p>${it.categoria}</p> <span>• </span>
                                    <p>${it.superficie} ms</p> <span> • </span>
                                    <p><span>${it.precio}</span>$$</p>
                                    <ul>
                                        <li><span class="icon-location-pin"></span>
                                            <p>${it.calle} ${it.numero}, ${it.barrio}</p>
                                        </li>
                                        <li><span class="icon-screen-smartphone"></span>
                                            <p>Piso: ${it.piso} &nbsp</p><span>• </span>
                                            <p>N° Departamento: ${it.nDepartamento} &nbsp</p>
                                        </li>
                                        <li><span class="icon-link"></span>
                                            <p>Baños: ${it.cantBanios} &nbsp</p><span>• </span>
                                            <p>Dormitorios: ${it.cantDormitorio} &nbsp</p>
                                        </li>

                                    </ul>
                                    <div class="bottom-icons">
                                        <div class="closed-now">CONSULTAR</div>
                                        <span class="ti-heart"></span>
                                        <span class="ti-bookmark"></span>
                                    </div>
                                </div>
                            </g:link></a>
                        </div>
                    </div>

                </g:each>
                <!--    <div class="col-md-4 featured-responsive">
                        <div class="featured-place-wrap">
                            <a href="detail.html">
                                <asset:image src="images/featured2.jpg" class="img-fluid" alt="#"/>
                                <span class="featured-rating-green">9.5</span>
                                <div class="featured-title-box">
                                    <h6>Joe’s Shanghai</h6>
                                    <p>Restaurant </p> <span>• </span>
                                    <p>3 Reviews</p> <span> • </span>
                                    <p><span>$$$</span>$$</p>
                                    <ul>
                                        <li><span class="icon-location-pin"></span>
                                            <p>1301 Avenue, Brooklyn, NY 11230</p>
                                        </li>
                                        <li><span class="icon-screen-smartphone"></span>
                                            <p>+44 20 7336 8898</p>
                                        </li>
                                        <li><span class="icon-link"></span>
                                            <p>https://burgerandlobster.com</p>
                                        </li>

                                    </ul>
                                    <div class="bottom-icons">
                                        <div class="closed-now">CLOSED NOW</div>
                                        <span class="ti-heart"></span>
                                        <span class="ti-bookmark"></span>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-4 featured-responsive">
                        <div class="featured-place-wrap">
                            <a href="detail.html">
                                <asset:image src="images/featured3.jpg" class="img-fluid" alt="#"/>
                                <span class="featured-rating">3.2</span>
                                <div class="featured-title-box">
                                    <h6>Tasty Hand-Pulled Noodles</h6>
                                    <p>Restaurant </p> <span>• </span>
                                    <p>3 Reviews</p> <span> • </span>
                                    <p><span>$$$</span>$$</p>
                                    <ul>
                                        <li><span class="icon-location-pin"></span>
                                            <p>1301 Avenue, Brooklyn, NY 11230</p>
                                        </li>
                                        <li><span class="icon-screen-smartphone"></span>
                                            <p>+44 20 7336 8898</p>
                                        </li>
                                        <li><span class="icon-link"></span>
                                            <p>https://burgerandlobster.com</p>
                                        </li>

                                    </ul>
                                    <div class="bottom-icons">
                                        <div class="open-now">OPEN NOW</div>
                                        <span class="ti-heart"></span>
                                        <span class="ti-bookmark"></span>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>  -->
            </div>

    <!--//END FEATURED PLACES -->
    <!--============================= CATEGORIES =============================-->

</body>

</html>
