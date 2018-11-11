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
                          <h3>Todas las Consultas</h3>
                      </div>
                  </div>
              </div>
          </div>

          <div class="row">
              <g:each in="${listadotodasconsultas?}">
                  <div class="col-md-4 featured-responsive">
                      <div class="featured-place-wrap">

                              <asset:image src="images/featured1.jpg" class="img-fluid" alt="#"/>
                              <span class="featured-rating-orange"><div class="closed-now">${it.estado}</div></span>
                              <div class="featured-title-box">
                                  <h6>${it.nombre} ${it.apellido}</h6>
                                  <p>Email: ${it.email}</p> <span>• </span>
                                  <p>Tel: ${it.telefono}</p>
                                  <p>Mensaje: ${it.comentario}</p>
                                  <div class="bottom-icons">

                                      <span class="ti-heart"></span>
                                      <span class="ti-bookmark"></span>
                                  </div>
                              </div>

                      </div>
                  </div>
              </g:each>
          </div>
      </section>
    <!--//END FEATURED PLACES -->
</body>
</html>
