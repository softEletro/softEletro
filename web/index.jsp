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
        <%@include file="src/header.jsp" %>
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
                            <img src="./img/oferta.jpg" class="imgBanner" alt="">
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
                                        <a href="MostraDetalhe?id=5"><button class="main-btn quick-view"><i class="fa fa-search-plus"></i> Detalhes</button></a>
                                        <img src="./img/note_razer_blade_270x360.png" class="imgLista" alt="">
                                    </div>
                                    <div class="product-body">
                                        <h3 class="product-price">R$8.800,00 <del class="product-old-price">R$11.000,00</del></h3>
                                        <h2 class="product-name"><a href="#">Razer Blade</a></h2>
                                        <div class="product-btns">
                                            <a href="AdicionarItens?idProduto=5"><button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i> Adicionar ao Carrinho</button></a>
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
                                         <a href="MostraDetalhe?id=6"><button class="main-btn quick-view"><i class="fa fa-search-plus"></i> Detalhes</button></a>
                                        <img src="./img/dell_inspiron.jpg" class="imgLista" alt="">
                                    </div>
                                    <div class="product-body">
                                        <h3 class="product-price">R$3.200,00 <del class="product-old-price">R$4.000,00</del></h3>
                                        <h2 class="product-name"><a href="#">Dell Inspiron</a></h2>
                                        <div class="product-btns">                   
                                            <a href="AdicionarItens?idProduto=6"><button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i> Adicionar ao carrinho</button></a>
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
                                        <a href="MostraDetalhe?id=9"><button class="main-btn quick-view"><i class="fa fa-search-plus"></i> Detalhes</button></a>
                                        <img src="./img/positivo_station.png" class="imgLista" alt="">
                                    </div>
                                    <div class="product-body">
                                        <h3 class="product-price">R$800,00 <del class="product-old-price">R$1.000,00</del></h3>

                                        <h2 class="product-name"><a href="#">Positivo Station C41TAI</a></h2>
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
                                        <a href="MostraDetalhe?id=2"><button class="main-btn quick-view"><i class="fa fa-search-plus"></i> Detalhes</button></a>
                                        <img src="./img/iphone8.png" class="imgLista" alt="">
                                    </div>
                                    <div class="product-body">
                                        <h3 class="product-price">R$2.800,00 <del class="product-old-price">R$3.500,00</del></h3>                                
                                        <h2 class="product-name"><a href="#">iPhone 8 Red</a></h2>
                                        <div class="product-btns">
                                            <a href="AdicionarItens?idProduto=2"><button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i> Adicionar ao Carrinho</button></a>
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
                                <a href="MostraDetalhe?id=4"><button class="main-btn quick-view"><i class="fa fa-search-plus"></i> Detalhes</button></a>
                                <img src="./img/note8_1200x1200.jpeg" class="imgLista" alt="">
                            </div>
                            <div class="product-body">
                                <h3 class="product-price">R$3.870,00</h3>
                                <h2 class="product-name"><a href="#">Galaxy Note 8</a></h2>
                                <div class="product-btns">
                                    <a href="AdicionarItens?idProduto=4"><button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i> Adicionar ao Carrinho</button></a>
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
                                        <a href="MostraDetalhe?id=10"><button class="main-btn quick-view"><i class="fa fa-search-plus"></i> Detalhes</button></a>
                                        <img src="./img/s9plus.png" class="imgLista" alt="">
                                    </div>
                                    <div class="product-body">
                                        <h3 class="product-price">R$4.150,00</h3>
                                        <h2 class="product-name"><a href="#">Samsung Galaxy S9+</a></h2>
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
                                            <span class="sale">-5%</span>
                                        </div>
                                        <a href="MostraDetalhe?id=1"><button class="main-btn quick-view"><i class="fa fa-search-plus"></i> Detalhes</button></a>
                                        <img src="./img/iphonex.png" class="imgLista" alt="">
                                    </div>
                                    <div class="product-body">
                                        <h3 class="product-price">R$3.990,00 <del class="product-old-price">R$4.200,00</del></h3>                                      
                                        <h2 class="product-name"><a href="#">iPhone X</a></h2>
                                        <div class="product-btns">
                                            <a href="AdicionarItens?idProduto=1"><button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i> Adicionar ao Carrinho</button></a>
                                        </div>
                                    </div>
                                </div>
                                <!-- /Product Single -->

                                <!-- Product Single -->
                                <div class="product product-single">
                                    <div class="product-thumb">
                                        <a href="MostraDetalhe?id=11"><button class="main-btn quick-view"><i class="fa fa-search-plus"></i> Detalhes</button></a>
                                        <img src="./img/moto_zplay.png" class="imgLista" alt="">
                                    </div>
                                    <div class="product-body">
                                        <h3 class="product-price">R$1.320,00</h3>
                                        <h2 class="product-name"><a href="#">Moto Z2 Play</a></h2>
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
                                            <span class="sale">-10%</span>
                                        </div>
                                        <a href="MostraDetalhe?id=3"><button class="main-btn quick-view"><i class="fa fa-search-plus"></i> Detalhes</button></a>
                                        <img src="./img/motog6.png" class="imgLista" alt="">
                                    </div>
                                    <div class="product-body">
                                        <h3 class="product-price">R$1.395,00 <del class="product-old-price">R$1.550,00</del></h3>
                                        <h2 class="product-name"><a href="#">Moto G6 Plus</a></h2>
                                        <div class="product-btns">
                                            <a href="AdicionarItens?idProduto=3"><button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i> Adicionar ao Carrinho</button></a>
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

                                <a href="MostraDetalhe?id=8"><button class="main-btn quick-view"><i class="fa fa-search-plus"></i> Detalhes</button></a>
                                <img src="./img/dell_xps8930.jpg" class="imgLista" alt="">
                            </div>
                            <div class="product-body">
                                <h3 class="product-price">R$3.800,00</h3>
                                <h2 class="product-name"><a href="#">Dell XPS 8930</a></h2>
                                <div class="product-btns">
                                    <a href="AdicionarItens?idProduto=8"><button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i> Adicionar ao Carrinho</button></a>
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
                                <a href="MostraDetalhe?id=12"><button class="main-btn quick-view"><i class="fa fa-search-plus"></i> Detalhes</button></a>
                                <img src="./img/positivo_stilo.jpg" class="imgLista" alt="">
                            </div>
                            <div class="product-body">
                                <h3 class="product-price">R$1.450,00</h3>
                                <h2 class="product-name"><a href="#">Positivo Stilo DS3568</a></h2>
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
                                    <span class="sale">-20%</span>
                                </div>                                      
                                <a href="MostraDetalhe?id=6"><button class="main-btn quick-view"><i class="fa fa-search-plus"></i> Detalhes</button></a>
                                <img src="./img/dell_inspiron.jpg" class="imgLista" alt="">
                            </div>
                            <div class="product-body">
                                <h3 class="product-price">R$3.200,00 <del class="product-old-price">R$4.000,00</del></h3>
                                <h2 class="product-name"><a href="#">Dell Inspiron</a></h2>
                                <div class="product-btns">                   
                                    <a href="AdicionarItens?idProduto=6"><button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i> Adicionar ao carrinho</button></a>
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
                                <a href="MostraDetalhe?id=5"><button class="main-btn quick-view"><i class="fa fa-search-plus"></i> Detalhes</button></a>
                                <img src="./img/note_razer_blade_270x360.png" class="imgLista" alt="">
                            </div>
                            <div class="product-body">
                                <h3 class="product-price">R$8.800,00 <del class="product-old-price">R$11.000,00</del></h3>
                                <h2 class="product-name"><a href="#">Razer Blade</a></h2>
                                <div class="product-btns">
                                    <a href="AdicionarItens?idProduto=5"><button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i> Adicionar ao Carrinho</button></a>
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
