<%-- 
    Document   : index
    Created on : 25/04/2018, 20:53:29
    Author     : 8247936
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

        <title>softEletro</title>
		<link rel="sortcut icon" href="img/logotitulo.png" type="image/x-icon" />
		<!-- #Titulo/iconeNoNavegador -->

        <!-- Google font -->
        <link href="https://fonts.googleapis.com/css?family=Hind:400,700" rel="stylesheet">

        <!-- Bootstrap -->
        <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />

        <!-- Slick -->
        <link type="text/css" rel="stylesheet" href="css/slick.css" />
        <link type="text/css" rel="stylesheet" href="css/slick-theme.css" />

        <!-- nouislider -->
        <link type="text/css" rel="stylesheet" href="css/nouislider.min.css" />

        <!-- Font Awesome Icon -->
        <link rel="stylesheet" href="css/font-awesome.min.css">

        <!-- Custom stlylesheet -->
        <link type="text/css" rel="stylesheet" href="css/style.css" />

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
                  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
                  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
                <![endif]-->

    </head>

    <body>
        <!-- HEADER -->
        <%@include file="src/header.html" %>
        <!-- /HEADER -->

        <!-- NAVIGATION -->
        <%@include file="src/menuIndex.html" %>
        <!-- /NAVIGATION -->

        <!-- HOME -->
        <div id="home">
            <!-- container -->
            <div class="container">
                <!-- home wrap -->
                <div class="home-wrap">
                    <!-- home slick -->
                    <div id="home-slick">
                        <!-- banner -->
                        <div class="banner banner-1">
                            <img src="./img/banner20.jpg" class="imgSlide" alt="">

                        </div>                       
                        <div class="banner banner-1">
                            <img src="./img/banner21.jpg" class="imgSlide" alt="">
                        </div>
                        <div class="banner banner-1">
                            <img src="./img/banner22.jpg" class="imgSlide" alt="">
                        </div>
                    </div>
                </div>
                <!-- /home wrap -->
            </div>
            <!-- /container -->
        </div>
        <!-- /HOME -->

        

        <!-- section -->
        <div class="section">
            <!-- container -->
            <div class="container">
                <!-- row -->
                <div class="row">
                    <!-- section-title -->
                    <div class="col-md-12">
                        <div class="section-title" id="ofertas">
                            <h2 class="title">Ofertas do Dia</h2>
                            <div class="pull-right">
                                <div class="product-slick-dots-1 custom-dots"></div>
                            </div>
                        </div>
                    </div>
                    <!-- /section-title -->

                    <!-- banner -->
                    <div class="col-md-3 col-sm-6 col-xs-6">
                        <div class="banner banner-2">
                            <img src="./img/banner14.jpg" class="imgBanner" alt="">
                            <div class="banner-caption">                               
                            </div>
                        </div>
                    </div>
                    <!-- /banner -->

                    <!-- Product Slick -->
                    <div class="col-md-9 col-sm-6 col-xs-6">
                        <div class="row">
                            <div id="product-slick-1" class="product-slick">
                                <!-- Product Single -->
                                <div class="product product-single">
                                    <div class="product-thumb">
                                        <div class="product-label">
                                            <span>Novo</span>
                                            <span class="sale">-20%</span>
                                        </div>                                       
                                        <button class="main-btn quick-view"><i class="fa fa-search-plus"></i> Detalhes</button>
                                        <img src="./img/product01.jpg" class="imgLista" alt="">
                                    </div>
                                    <div class="product-body">
                                        <h3 class="product-price">R$32.50 <del class="product-old-price">R$45.00</del></h3>
                                        <h2 class="product-name"><a href="#">Product Name Goes Here</a></h2>
                                        <div class="product-btns">
											<button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i> Adicionar ao Carrinho</button>
                                        </div>
                                    </div>
                                </div>
                                <!-- /Product Single -->

                                <!-- Product Single -->
                                <div class="product product-single">
                                    <div class="product-thumb">
                                        <div class="product-label">
                                            <span class="sale">-20%</span>
                                        </div>                                      
                                        <button class="main-btn quick-view"><i class="fa fa-search-plus"></i> Detalhes</button>
                                        <img src="./img/product07.jpg" class="imgLista" alt="">
                                    </div>
                                    <div class="product-body">
                                        <h3 class="product-price">R$32.50 <del class="product-old-price">R$45.00</del></h3>
                                        <h2 class="product-name"><a href="#">Product Name Goes Here</a></h2>
                                        <div class="product-btns">                   
                                            <button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i> Adicionar ao carrinho</button>
                                        </div>
                                    </div>
                                </div>
                                <!-- /Product Single -->

                                <!-- Product Single -->
                                <div class="product product-single">
                                    <div class="product-thumb">
                                        <div class="product-label">
                                            <span>Novo</span>
                                            <span class="sale">-20%</span>
                                        </div>                                       
                                        <button class="main-btn quick-view"><i class="fa fa-search-plus"></i> Detalhes</button>
                                        <img src="./img/product06.jpg" class="imgLista" alt="">
                                    </div>
                                    <div class="product-body">
                                        <h3 class="product-price">R$32.50 <del class="product-old-price">R$45.00</del></h3>
                                   
                                        <h2 class="product-name"><a href="#">Product Name Goes Here</a></h2>
                                        <div class="product-btns">
                                            <button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i> Adicionar ao Carrinho</button>
                                        </div>
                                    </div>
                                </div>
                                <!-- /Product Single -->

                                <!-- Product Single -->
                                <div class="product product-single">
                                    <div class="product-thumb">
                                        <div class="product-label">
                                            <span>Novo</span>
                                            <span class="sale">-20%</span>
                                        </div>        
                                        <button class="main-btn quick-view"><i class="fa fa-search-plus"></i> Detalhes</button>
                                        <img src="./img/product08.jpg" class="imgLista" alt="">
                                    </div>
                                    <div class="product-body">
                                        <h3 class="product-price">R$32.50 <del class="product-old-price">R$45.00</del></h3>                                
                                        <h2 class="product-name"><a href="#">Product Name Goes Here</a></h2>
                                        <div class="product-btns">
                                            <button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i> Adicionar ao Carrinho</button>
                                        </div>
                                    </div>
                                </div>
                                <!-- /Product Single -->
                            </div>
                        </div>
                    </div>
                    <!-- /Product Slick -->
                </div>
                <!-- /row -->

                <!-- row -->
                <div class="row" id="celular">
                    <!-- section title -->
                    <div class="col-md-12">
                        <div class="section-title">
                            <h2 class="title">Celulares</h2>
                            <div class="pull-right">
                                <div class="product-slick-dots-2 custom-dots">
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- section title -->

                    <!-- Product Single -->
                    <div class="col-md-3 col-sm-6 col-xs-6">
                        <div class="product product-single product-hot">
                            <div class="product-thumb">
                                <div class="product-label">
                                    <span class="sale">-20%</span>
                                </div>                               
                                <button class="main-btn quick-view"><i class="fa fa-search-plus"></i> Detalhes</button>
                                <img src="./img/product01.jpg" class="imgLista" alt="">
                            </div>
                            <div class="product-body">
                                <h3 class="product-price">R$32.50 <del class="product-old-price">R$45.00</del></h3>
                                <h2 class="product-name"><a href="#">Product Name Goes Here</a></h2>
                                <div class="product-btns">
                                    <button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i> Adicionar ao Carrinho</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /Product Single -->

                    <!-- Product Slick -->
                    <div class="col-md-9 col-sm-6 col-xs-6">
                        <div class="row">
                            <div id="product-slick-2" class="product-slick">
                                <!-- Product Single -->
                                <div class="product product-single">
                                    <div class="product-thumb">
                                        <button class="main-btn quick-view"><i class="fa fa-search-plus"></i> Detalhes</button>
                                        <img src="./img/product06.jpg" class="imgLista" alt="">
                                    </div>
                                    <div class="product-body">
                                        <h3 class="product-price">R$32.50</h3>
                                        <h2 class="product-name"><a href="#">Product Name Goes Here</a></h2>
                                        <div class="product-btns">
                                            <button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i> Adicionar ao Carrinho</button>
                                        </div>
                                    </div>
                                </div>
                                <!-- /Product Single -->

                                <!-- Product Single -->
                                <div class="product product-single">
                                    <div class="product-thumb">
                                        <div class="product-label">
                                            <span class="sale">-20%</span>
                                        </div>
                                        <button class="main-btn quick-view"><i class="fa fa-search-plus"></i> Detalhes</button>
                                        <img src="./img/product05.jpg" class="imgLista" alt="">
                                    </div>
                                    <div class="product-body">
                                        <h3 class="product-price">R$32.50 <del class="product-old-price">R$45.00</del></h3>                                      
                                        <h2 class="product-name"><a href="#">Product Name Goes Here</a></h2>
                                        <div class="product-btns">
                                            <button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i> Adicionar ao Carrinho</button>
                                        </div>
                                    </div>
                                </div>
                                <!-- /Product Single -->

                                <!-- Product Single -->
                                <div class="product product-single">
                                    <div class="product-thumb">
                                        <button class="main-btn quick-view"><i class="fa fa-search-plus"></i> Detalhes</button>
                                        <img src="./img/product04.jpg" class="imgLista" alt="">
                                    </div>
                                    <div class="product-body">
                                        <h3 class="product-price">R$32.50</h3>
                                        <h2 class="product-name"><a href="#">Product Name Goes Here</a></h2>
                                        <div class="product-btns">
                                            
                                            <button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i> Adicionar ao Carrinho</button>
                                        </div>
                                    </div>
                                </div>
                                <!-- /Product Single -->

                                <!-- Product Single -->
                                <div class="product product-single">
                                    <div class="product-thumb">
                                        <div class="product-label">
                                            <span>Novo</span>
                                            <span class="sale">-20%</span>
                                        </div>
                                        <button class="main-btn quick-view"><i class="fa fa-search-plus"></i> Detalhes</button>
                                        <img src="./img/product03.jpg" class="imgLista" alt="">
                                    </div>
                                    <div class="product-body">
                                        <h3 class="product-price">R$32.50 <del class="product-old-price">R$45.00</del></h3>
                                        <h2 class="product-name"><a href="#">Product Name Goes Here</a></h2>
                                        <div class="product-btns">
                                            <button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i> Adicionar ao Carrinho</button>
                                        </div>
                                    </div>
                                </div>
                                <!-- /Product Single -->

                            </div>
                        </div>
                    </div>
                    <!-- /Product Slick -->
                </div>
                <!-- /row -->
            </div>
            <!-- /container -->
        </div>
        <!-- /section -->

        <!-- section -->
        <div class="section">
            <!-- container -->
            <div class="container">
                <!-- row -->
                <div class="row" id="computador">
                    <!-- section title -->
                    <div class="col-md-12">
                        <div class="section-title">
                            <h2 class="title">Computadores</h2>
                        </div>
                    </div>
                    <!-- section title -->

                    <!-- Product Single -->
                    <div class="col-md-3 col-sm-6 col-xs-6">
                        <div class="product product-single">
                            <div class="product-thumb">
                                <button class="main-btn quick-view"><i class="fa fa-search-plus"></i> Detalhes</button>
                                <img src="./img/product01.jpg" class="imgLista" alt="">
                            </div>
                            <div class="product-body">
                                <h3 class="product-price">R$32.50</h3>
                                <h2 class="product-name"><a href="#">Product Name Goes Here</a></h2>
                                <div class="product-btns">
                                    <button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i> Adicionar ao Carrinho</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /Product Single -->

                    <!-- Product Single -->
                    <div class="col-md-3 col-sm-6 col-xs-6">
                        <div class="product product-single">
                            <div class="product-thumb">
                                <div class="product-label">
                                    <span>Novo</span>
                                    <span class="sale">-20%</span>
                                </div>
                                <button class="main-btn quick-view"><i class="fa fa-search-plus"></i> Detalhes</button>
                                <img src="./img/product02.jpg" class="imgLista" alt="">
                            </div>
                            <div class="product-body">
                                <h3 class="product-price">R$32.50 <del class="product-old-price">R$45.00</del></h3>
                                <h2 class="product-name"><a href="#">Product Name Goes Here</a></h2>
                                <div class="product-btns">
                                    <button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i> Adicionar ao Carrinho</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /Product Single -->

                    <!-- Product Single -->
                    <div class="col-md-3 col-sm-6 col-xs-6">
                        <div class="product product-single">
                            <div class="product-thumb">
                                <div class="product-label">
                                    <span>Novo</span>
                                    <span class="sale">-20%</span>
                                </div>
                                <button class="main-btn quick-view"><i class="fa fa-search-plus"></i> Detalhes</button>
                                <img src="./img/product03.jpg" class="imgLista" alt="">
                            </div>
                            <div class="product-body">
                                <h3 class="product-price">R$32.50 <del class="product-old-price">R$45.00</del></h3>
                                <h2 class="product-name"><a href="#">Product Name Goes Here</a></h2>
                                <div class="product-btns">
                                    <button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i> Adicionar to Carrinho</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /Product Single -->

                    <!-- Product Single -->
                    <div class="col-md-3 col-sm-6 col-xs-6">
                        <div class="product product-single">
                            <div class="product-thumb">
                                <div class="product-label">
                                    <span>Novo</span>
                                </div>
                                <button class="main-btn quick-view"><i class="fa fa-search-plus"></i> Detalhes</button>
                                <img src="./img/product04.jpg" class="imgLista" alt="">
                            </div>
                            <div class="product-body">
                                <h3 class="product-price">R$32.50</h3>
                                <h2 class="product-name"><a href="#">Product Name Goes Here</a></h2>
                                <div class="product-btns">
                                    <button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i> Adicionar ao Carrinho</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /Product Single -->
                </div>
                <!-- /row -->

            </div>
            <!-- /container -->
        </div>
        <!-- /section -->

        <!-- FOOTER -->
        <%@include file="src/footerCliente.html" %>
        <!-- /FOOTER -->

        <!-- jQuery Plugins -->
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/slick.min.js"></script>
        <script src="js/nouislider.min.js"></script>
        <script src="js/jquery.zoom.min.js"></script>
        <script src="js/main.js"></script>

    </body>

</html>
