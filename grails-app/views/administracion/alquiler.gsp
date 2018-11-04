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
</head>

<body>
    <!--============================= HEADER =============================-->
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
                                    <li><g:link controller="administracion" action="consulta" class="nav-link">Consultas</g:link></li>

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
                                    <h5>Let's uncover the best places to eat, drink, and shop nearest to you.</h5>
                                </div>
                            </div>
                        </div>
                        <div class="row d-flex justify-content-center">
                            <div class="col-md-10">
                                <form class="form-wrap mt-4">
                                    <div class="btn-group" role="group" aria-label="Basic example">
                                        <input type="text" placeholder="What are your looking for?" class="btn-group1">
                                        <input type="text" placeholder="New york" class="btn-group2">
                                        <button type="submit" class="btn-form"><span class="icon-magnifier search-icon"></span>SEARCH<i class="pe-7s-angle-right"></i></button>
                                    </div>
                                </form>
                                <div class="slider-link">
                                    <a href="#">Browse Popular</a><span>or</span> <a href="#">Recently Added</a>
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
    <!--============================= FEATURED PLACES =============================-->
    <section class="main-block light-bg">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-5">
                    <div class="styled-heading">
                        <h3>Propiedades en Alquiler</h3>
                    </div>
                </div>
            </div>
            
        <div class="row">
            <g:each in="${listadoAlquiler?}">

                <div class="col-md-4 featured-responsive">
                    <div class="featured-place-wrap">
                        <a><g:link controller="clientes" action="create">
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
                                    <div class="closed-now">CLOSED NOW</div>
                                    <span class="ti-heart"></span>
                                    <span class="ti-bookmark"></span>
                                </div>
                            </div>
                        </g:link></a></a>
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
            <div class="row justify-content-center">
                <div class="col-md-4">
                    <div class="featured-btn-wrap">
                        <a href="#" class="btn btn-danger">VIEW ALL</a>
                    </div>
                </div>
            </div>
    </section>
    <!--//END FEATURED PLACES -->
    <!--============================= CATEGORIES =============================-->
    <section class="main-block">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-5">
                    <div class="styled-heading">
                        <h3>Browse Categories</h3>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3 category-responsive">
                    <a href="#" class="category-wrap">
                        <div class="category-block">
                            <svg class="category-img" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Layer_1" x="0px" y="0px" viewBox="0 0 469.824 469.824" style="enable-background:new 0 0 469.824 469.824;" xml:space="preserve" width="512px"
                                height="512px"><g><g>
              <g>
                <path d="M188.885,67.36C147.84,26.336,67.52,21.579,10.667,21.579C4.779,21.579,0,26.357,0,32.245    c0,56.853,4.736,137.173,45.781,178.219c17.323,17.323,43.883,25.067,70.208,25.067c28.608,0,56.96-9.152,72.896-25.088    C219.456,179.872,225.067,103.52,188.885,67.36z M173.803,195.381c-22.827,22.805-86.208,26.709-112.917,0    C27.755,162.251,22.016,94.944,21.397,42.976c51.968,0.619,119.275,6.357,152.405,39.488    C200.512,109.173,196.608,172.576,173.803,195.381z" data-original="#000000" class="active-path" data-old_color="#ff3a6d" fill="#ff3a6d"/>
              </g>
            </g><g>
              <g>
                <path d="M459.157,63.776c-56.853,0-137.173,4.736-178.219,45.781c-36.181,36.16-30.571,112.512,0,143.083    c15.936,15.915,44.267,25.067,72.875,25.067c26.325,0,52.864-7.723,70.229-25.045c41.024-41.045,45.781-121.365,45.781-178.219    C469.824,68.555,465.045,63.776,459.157,63.776z M408.917,237.557c-26.709,26.709-90.112,22.805-112.917,0    c-22.805-22.805-26.709-86.208,0-112.917c33.131-33.131,100.437-38.869,152.405-39.488    C447.787,137.141,442.048,204.448,408.917,237.557z" data-original="#000000" class="active-path" data-old_color="#ff3a6d" fill="#ff3a6d"/>
              </g>
            </g><g>
              <g>
                <path d="M382.123,156.107c-2.517-5.355-9.728-7.189-15.04-4.715c-81.813,38.464-122.005,105.536-140.267,174.485    c-22.592-146.603-87.936-191.296-115.648-210.261c-3.456-2.368-6.144-4.096-7.637-5.568c-4.16-4.16-10.923-4.16-15.083,0    c-4.16,4.16-4.16,10.923,0,15.083c2.112,2.091,5.76,4.715,10.688,8.085c31.232,21.355,114.197,78.123,114.197,304.363    c0,5.888,4.779,10.667,10.667,10.667s10.667-4.779,10.667-10.645c0-91.413,24.555-211.925,141.504-266.88    c0-0.021,1.728-0.832,1.728-0.832C383.211,167.371,384.64,161.44,382.123,156.107z" data-original="#000000" class="active-path" data-old_color="#ff3a6d" fill="#ff3a6d"/>
              </g>
            </g></g> </svg>
                            <h6>Casa</h6>
                        </div>
                    </a>
                </div>
                <div class="col-md-3 category-responsive">
                    <a href="#" class="category-wrap">
                        <div class="category-block">
                            <svg class="category-img" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Layer_2" x="0px" y="0px" viewBox="0 0 503.607 503.607" style="enable-background:new 0 0 503.607 503.607;" xml:space="preserve" width="512px"
                                height="512px"><g><g transform="translate(1 1)">
              <g>
                <g>
                  <path d="M494.213,452.246h-25.18V7.393c0-5.036-3.357-8.393-8.393-8.393H40.967c-5.036,0-8.393,3.357-8.393,8.393v444.852H7.393     c-5.036,0-8.393,3.357-8.393,8.393v33.574c0,5.036,3.357,8.393,8.393,8.393h486.82c5.036,0,8.393-3.357,8.393-8.393v-33.574     C502.607,455.603,499.249,452.246,494.213,452.246z M49.361,15.787h402.885v436.459H326.344v-92.328     c0-5.036-3.357-8.393-8.393-8.393h-67.148h-67.148c-5.036,0-8.393,3.357-8.393,8.393v92.328H49.361V15.787z M192.049,452.246     v-83.934h50.361v83.934H192.049z M259.197,368.311h50.361v83.934h-50.361V368.311z M485.82,485.82H15.787v-16.787h25.18h142.689     h67.148h67.148h142.689h25.18V485.82z" data-original="#000000" class="active-path" data-old_color="#ff3a6d" fill="#ff3a6d"/>
                  <path d="M158.475,40.967H91.328c-5.036,0-8.393,3.357-8.393,8.393v50.361c0,5.036,3.357,8.393,8.393,8.393h67.148     c5.036,0,8.393-3.357,8.393-8.393V49.361C166.869,44.325,163.511,40.967,158.475,40.967z M150.082,91.328H99.721V57.754h50.361     V91.328z" data-original="#000000" class="active-path" data-old_color="#ff3a6d" fill="#ff3a6d"/>
                  <path d="M158.475,133.295H91.328c-5.036,0-8.393,3.357-8.393,8.393v50.361c0,5.036,3.357,8.393,8.393,8.393h67.148     c5.036,0,8.393-3.357,8.393-8.393v-50.361C166.869,136.652,163.511,133.295,158.475,133.295z M150.082,183.656H99.721v-33.574     h50.361V183.656z" data-original="#000000" class="active-path" data-old_color="#ff3a6d" fill="#ff3a6d"/>
                  <path d="M217.229,200.443h67.148c5.036,0,8.393-3.357,8.393-8.393v-50.361c0-5.036-3.357-8.393-8.393-8.393h-67.148     c-5.036,0-8.393,3.357-8.393,8.393v50.361C208.836,197.085,212.193,200.443,217.229,200.443z M225.623,150.082h50.361v33.574     h-50.361V150.082z" data-original="#000000" class="active-path" data-old_color="#ff3a6d" fill="#ff3a6d"/>
                  <path d="M343.131,200.443h67.148c5.036,0,8.393-3.357,8.393-8.393v-50.361c0-5.036-3.357-8.393-8.393-8.393h-67.148     c-5.036,0-8.393,3.357-8.393,8.393v50.361C334.738,197.085,338.095,200.443,343.131,200.443z M351.525,150.082h50.361v33.574     h-50.361V150.082z" data-original="#000000" class="active-path" data-old_color="#ff3a6d" fill="#ff3a6d"/>
                  <path d="M217.229,292.771h67.148c5.036,0,8.393-3.357,8.393-8.393v-50.361c0-5.036-3.357-8.393-8.393-8.393h-67.148     c-5.036,0-8.393,3.357-8.393,8.393v50.361C208.836,289.413,212.193,292.771,217.229,292.771z M225.623,242.41h50.361v33.574     h-50.361V242.41z" data-original="#000000" class="active-path" data-old_color="#ff3a6d" fill="#ff3a6d"/>
                  <path d="M343.131,292.771h67.148c5.036,0,8.393-3.357,8.393-8.393v-50.361c0-5.036-3.357-8.393-8.393-8.393h-67.148     c-5.036,0-8.393,3.357-8.393,8.393v50.361C334.738,289.413,338.095,292.771,343.131,292.771z M351.525,242.41h50.361v33.574     h-50.361V242.41z" data-original="#000000" class="active-path" data-old_color="#ff3a6d" fill="#ff3a6d"/>
                  <path d="M158.475,225.623H91.328c-5.036,0-8.393,3.357-8.393,8.393v50.361c0,5.036,3.357,8.393,8.393,8.393h67.148     c5.036,0,8.393-3.357,8.393-8.393v-50.361C166.869,228.98,163.511,225.623,158.475,225.623z M150.082,275.984H99.721V242.41     h50.361V275.984z" data-original="#000000" class="active-path" data-old_color="#ff3a6d" fill="#ff3a6d"/>
                  <path d="M217.229,108.115h67.148c5.036,0,8.393-3.357,8.393-8.393V49.361c0-5.036-3.357-8.393-8.393-8.393h-67.148     c-5.036,0-8.393,3.357-8.393,8.393v50.361C208.836,104.757,212.193,108.115,217.229,108.115z M225.623,57.754h50.361v33.574     h-50.361V57.754z" data-original="#000000" class="active-path" data-old_color="#ff3a6d" fill="#ff3a6d"/>
                  <path d="M343.131,108.115h67.148c5.036,0,8.393-3.357,8.393-8.393V49.361c0-5.036-3.357-8.393-8.393-8.393h-67.148     c-5.036,0-8.393,3.357-8.393,8.393v50.361C334.738,104.757,338.095,108.115,343.131,108.115z M351.525,57.754h50.361v33.574     h-50.361V57.754z" data-original="#000000" class="active-path" data-old_color="#ff3a6d" fill="#ff3a6d"/>
                  <path d="M200.443,334.738h100.721c5.036,0,8.393-3.357,8.393-8.393c0-5.036-3.357-8.393-8.393-8.393H200.443     c-5.036,0-8.393,3.357-8.393,8.393C192.049,331.38,195.407,334.738,200.443,334.738z" data-original="#000000" class="active-path" data-old_color="#ff3a6d" fill="#ff3a6d"/>
                </g>
              </g>
            </g></g> </svg>
                            <h6>Departamento</h6>
                        </div>
                    </a>
                </div>
                <div class="col-md-3 category-responsive">
                    <a href="#" class="category-wrap">
                        <div class="category-block">
                            <svg class="category-img" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_2" x="0px" y="0px" viewBox="0 0 60 60" style="enable-background:new 0 0 60 60;" xml:space="preserve" width="512px" height="512px"><g><g>
              <path d="M59,16V2H1v14H0v37.259C0,55.873,2.127,58,4.742,58h50.517C57.873,58,60,55.873,60,53.259V16H59z M56.5,16l-5.18-6.906   L56.414,4H57v12H56.5z M11,16V9c0-0.024-0.012-0.046-0.014-0.07c-0.005-0.064-0.02-0.124-0.036-0.187   c-0.011-0.042-0.01-0.085-0.027-0.125c-0.009-0.022-0.027-0.039-0.037-0.061c-0.027-0.055-0.065-0.102-0.103-0.152   c-0.028-0.036-0.044-0.081-0.077-0.113L6.414,4h47.172l-4.292,4.292c-0.032,0.032-0.049,0.077-0.077,0.113   c-0.038,0.05-0.075,0.097-0.102,0.152c-0.011,0.022-0.028,0.038-0.038,0.061c-0.017,0.04-0.016,0.084-0.027,0.125   c-0.017,0.063-0.032,0.122-0.036,0.187C49.012,8.954,49,8.976,49,9v7H11z M6,16l3-4.001V16H6z M51,11.999L54,16h-3V11.999z M3,4   h0.586L8.68,9.094L3.5,16H3V4z M58,53.259C58,54.771,56.77,56,55.258,56H4.742C3.23,56,2,54.771,2,53.259V18h56V53.259z" data-original="#000000" class="active-path" data-old_color="#ff3a6d" fill="#ff3a6d"/>
              <path d="M42,24c-0.552,0-1,0.447-1,1v6c0,6.065-4.935,11-11,11s-11-4.935-11-11v-6c0-0.553-0.448-1-1-1s-1,0.447-1,1v6   c0,7.168,5.832,13,13,13s13-5.832,13-13v-6C43,24.447,42.552,24,42,24z" data-original="#000000" class="active-path" data-old_color="#ff3a6d" fill="#ff3a6d"/>
              <path d="M20,25c0,0.553,0.448,1,1,1s1-0.447,1-1c0-2.206-1.794-4-4-4s-4,1.794-4,4c0,0.553,0.448,1,1,1s1-0.447,1-1   c0-1.103,0.897-2,2-2S20,23.897,20,25z" data-original="#000000" class="active-path" data-old_color="#ff3a6d" fill="#ff3a6d"/>
              <path d="M42,21c-2.206,0-4,1.794-4,4c0,0.553,0.448,1,1,1s1-0.447,1-1c0-1.103,0.897-2,2-2s2,0.897,2,2c0,0.553,0.448,1,1,1   s1-0.447,1-1C46,22.794,44.206,21,42,21z" data-original="#000000" class="active-path" data-old_color="#ff3a6d" fill="#ff3a6d"/>
            </g></g> </svg>
                            <h6>Local</h6>
                        </div>
                    </a>
                </div>
                <div class="col-md-3 category-responsive">
                    <a href="#" class="category-wrap">
                        <div class="category-block">
                            <svg class="category-img" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_3" x="0px" y="0px" viewBox="0 0 511.988 511.988" style="enable-background:new 0 0 511.988 511.988;" xml:space="preserve" width="512px"
                                height="512px"><g><g>
              <g>
                <path d="M489.865,433.23c-1.643-3.989-5.547-6.592-9.856-6.592H10.676c-4.309,0-8.213,2.603-9.856,6.592    c-1.664,3.989-0.747,8.576,2.304,11.627l23.915,23.915c11.371,11.349,25.003,21.867,47.616,21.867h341.333    c22.613,0,36.245-10.517,47.659-21.867l23.915-23.915C490.612,441.806,491.529,437.22,489.865,433.23z M448.521,453.689    c-11.541,11.541-20.053,15.616-32.533,15.616H74.655c-12.48,0-20.992-4.075-32.533-15.616l-5.717-5.717h417.835L448.521,453.689z" data-original="#000000" class="active-path" data-old_color="#ff3a6d" fill="#ff3a6d"/>
              </g>
            </g><g>
              <g>
                <path d="M373.322,191.972h-256c-17.643,0-32,14.357-32,32v64c0,61.333,27.691,118.784,75.947,157.632    c4.608,3.691,11.328,2.987,14.997-1.621c3.691-4.587,2.965-11.307-1.621-14.997c-43.221-34.773-68.011-86.165-68.011-141.013v-64    c0-5.867,4.779-10.667,10.667-10.667h256c5.888,0,10.667,4.8,10.667,10.667v64c0,54.827-24.789,106.219-68.011,141.013    c-4.587,3.691-5.312,10.411-1.621,14.997c2.112,2.645,5.205,3.989,8.32,3.989c2.347,0,4.715-0.768,6.677-2.347    c48.299-38.869,75.989-96.32,75.989-157.653v-64C405.322,206.329,390.964,191.972,373.322,191.972z" data-original="#000000" class="active-path" data-old_color="#ff3a6d" fill="#ff3a6d"/>
              </g>
            </g><g>
              <g>
                <path d="M328.372,102.628c17.344-21.675,17.344-55.616,0-77.291c-3.691-4.565-10.389-5.333-14.997-1.664    c-4.587,3.691-5.333,10.389-1.664,14.997c10.987,13.739,10.987,36.885-0.021,50.667c-17.344,21.675-17.344,55.616,0,77.291    c2.112,2.645,5.205,4.011,8.341,4.011c2.325,0,4.693-0.768,6.635-2.347c4.608-3.691,5.355-10.389,1.664-14.997    C317.343,139.556,317.343,116.409,328.372,102.628z" data-original="#000000" class="active-path" data-old_color="#ff3a6d" fill="#ff3a6d"/>
              </g>
            </g><g>
              <g>
                <path d="M264.308,102.628c17.344-21.675,17.344-55.616,0-77.291c-3.669-4.565-10.389-5.333-14.997-1.664    c-4.608,3.691-5.355,10.389-1.664,14.997c10.987,13.739,10.987,36.885-0.043,50.667c-17.344,21.675-17.344,55.616,0,77.291    c2.112,2.645,5.205,4.011,8.341,4.011c2.325,0,4.672-0.768,6.677-2.347c4.587-3.691,5.333-10.389,1.664-14.997    C253.3,139.556,253.3,116.409,264.308,102.628z" data-original="#000000" class="active-path" data-old_color="#ff3a6d" fill="#ff3a6d"/>
              </g>
            </g><g>
              <g>
                <path d="M200.372,102.628c17.344-21.675,17.344-55.616,0-77.291c-3.691-4.565-10.368-5.333-14.997-1.664    c-4.587,3.691-5.333,10.411-1.664,14.997c10.987,13.739,10.987,36.885-0.021,50.667c-17.344,21.675-17.344,55.616,0,77.291    c2.112,2.645,5.205,4.011,8.341,4.011c2.325,0,4.693-0.768,6.656-2.325c4.608-3.691,5.355-10.389,1.664-14.997    C189.364,139.577,189.364,116.409,200.372,102.628z" data-original="#000000" class="active-path" data-old_color="#ff3a6d" fill="#ff3a6d"/>
              </g>
            </g><g>
              <g>
                <path d="M447.988,213.305c-35.285,0-64,28.715-64,64s28.715,64,64,64c35.285,0,64-28.715,64-64S483.273,213.305,447.988,213.305z     M447.988,319.972c-23.531,0-42.667-19.136-42.667-42.667c0-23.531,19.136-42.667,42.667-42.667    c23.531,0,42.667,19.136,42.667,42.667C490.655,300.836,471.519,319.972,447.988,319.972z" data-original="#000000" class="active-path" data-old_color="#ff3a6d" fill="#ff3a6d"/>
              </g>
            </g></g> </svg>
                            <h6>Oficina</h6>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </section>
    <!--//END CATEGORIES -->
    <!--============================= ADD LISTING =============================-->
    <section class="main-block light-bg">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="add-listing-wrap">
                        <h2>Reach millions of People</h2>
                        <p>Add your Business infront of millions and earn 3x profits from our listing</p>
                    </div>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-md-4">
                    <div class="featured-btn-wrap">
                        <a href="#" class="btn btn-danger"><span class="ti-plus"></span> ADD LISTING</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--//END ADD LISTING -->
    <!--============================= FOOTER =============================-->
    <footer class="main-block dark-bg">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="copyright">
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        <p>Copyright &copy; 2018 Listing. All rights reserved | This template is made with <i class="ti-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a></p>
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
