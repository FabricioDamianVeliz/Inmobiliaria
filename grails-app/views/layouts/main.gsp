<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="author" content="Colorlib">
    <meta name="description" content="#">
    <meta name="keywords" content="#">
    <asset:link rel="icon" href="logo.ico" type="image/x-ico" />
    <title>SIGAI</title>
    <!-- Page Title -->
    <title>Listing &amp; Directory Website Template</title>
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


    <g:layoutHead/>

  </head>
<body>


    <g:layoutBody/>




    <footer class="main-block dark-bg">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="copyright">
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        <p>Copyright &copy; 2018 Catamarca, Argentina <i class="ti-heart" aria-hidden="true"></i> by <a href="http://tecno.unca.edu.ar/" target="_blank">Facultad de Tecnologia y Ciencias Aplicadas (UnCA)</a></p>
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
