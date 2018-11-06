
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="author" content="Colorlib">
    <meta name="description" content="#">
    <meta name="keywords" content="#">
    <!-- Page Title -->
    <title>SIGAI</title>
    <!-- Bootstrap CSS -->
    <g:if env="development"><asset:stylesheet src="bootstrap.min.css"/></g:if>
    <!-- Google Fonts -->
    <g:if env="development"><asset:stylesheet src="fonts-googleapis.css"/></g:if>
    <!-- Simple line Icon -->
    <g:if env="development"><asset:stylesheet src="simple-line-icons.css"/></g:if>
    <!-- Themify Icon -->
    <g:if env="development"><asset:stylesheet src="themify-icons.css"/></g:if>
    <!-- Hover Effects -->
    <g:if env="development"><asset:stylesheet src="set1.css"/></g:if>
    <!-- Main CSS -->
    <g:if env="development"><asset:stylesheet src="style.css"/></g:if>

    <g:if env="development"><asset:stylesheet src="estilos1.css"/></g:if>
</head>

<body>
    <!--============================= HEADER =============================-->
    <div class="nav-menu">
        <div class="bg transition">
            <div class="container-fluid fixed">
                <div class="row">
                    <div class="col-md-12">
                        <nav class="navbar navbar-expand-lg navbar-light">
                            <a >SIGAI</a>
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
                                    <li> <div class="btn btn-outline-light top-btn"><g:link  controller="administracion" action="principal"  class="nav-link"><span class="ti-plus"></span>VOLVER</a></g:link></div></li>
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
                                    <h1>Login de Usuario</h1>
                                </div>
                            </div>
                        </div>
                        <div class="row d-flex justify-content-center">
                            <div class="col-md-10">
                              <div class="container">
                              <g:if test="${message}">
                                <div class="message" role="status">${message}</div>
                              </g:if>

                                <g:form controller="login" action="login" method="post">

                                    <input type='email' placeholder= "EMAIL" id='email' name='email' required/>
                                    <br><br>
                                    <input type="password" id='password' placeholder= "CONTRASEÑA" name='password' required/>
                                    <br><br>

                                    <input type="submit" value="Login"/>
                                </g:form>
                              </div>
                              </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--// SLIDER -->
    <!--//END HEADER -->

    <!--============================= FOOTER =============================-->
    <footer class="main-block dark-bg">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="copyright">
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        <p>Copyright &copy; 2018 CATAMARCA ARGENTINA <i class="ti-heart" aria-hidden="true"></i> by <a href="http://tecno.unca.edu.ar/" target="_blank">Universidad Nacional de Catamarca</a></p>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        <ul>
                            <li><a href="#"><span class="ti-facebook"></span></a></li>
                            <li><a href="#"><span class="ti-twitter-alt"></span></a></li>
                            <li><a href="#"><span class="ti-instagram"></span></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!--//END FOOTER -->




    <!-- jQuery, Bootstrap JS. -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <g:if env="development"><asset:javascript src="jquery-3.2.1.min.js"/></g:if>
    <g:if env="development"><asset:javascript src="popper.min.js"/></g:if>
    <g:if env="development"><asset:javascript src="bootstrap.min.js"/></g:if>


    <script>
        $(window).scroll(function() {
            // 100 = The point you would like to fade the nav in.

            if ($(window).scrollTop() > 100) {

                $('.fixed').addClass('is-sticky');

            } else {

                $('.fixed').removeClass('is-sticky');

            };
        });
    </script>
</body>

</html>
