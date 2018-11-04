<!DOCTYPE html>
<html lang="en">

<head>
  <meta name="layout" content="main"/>

</head>

<body>

    <!--============================= FEATURED PLACES =============================-->
    <section class="main-block light-bg">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-5">
                    <div class="styled-heading">
                        <h3>CONSULTAS NO LEIDAS</h3>
                    </div>
                </div>
            </div>

        <div class="row">
            <g:each in="${listadoConsultas?}">

                <div class="col-md-4 featured-responsive">
                    <div class="featured-place-wrap">
                        <a><g:link controller="administracion" action="leido">
                            <asset:image src="images/featured1.jpg" class="img-fluid" alt="#"/>
                            <span class="featured-rating-orange">9.5</span>
                            <div class="featured-title-box">
                                <h6>${it.nombre}${it.apellido} </h6>
                                <p>${it.email}</p> <span>• </span>
                                <p>${it.telefono}</p> <span> • </span>
                                <p>COMENARIO:<span> ${it.comentario}</span></p>
                                <div class="bottom-icons">
                                    <div class="closed-now">LEIDO</div>
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

    <!--//END FEATURED PLACES -->

</body>

</html>
