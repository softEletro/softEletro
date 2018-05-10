<!DOCTYPE html>
<html lang="en">

    <jsp:useBean id="idProduto" scope="request" class="java.lang.Integer" />
    <jsp:useBean id="preco" scope="request" class="java.lang.Double" />
    <jsp:useBean id="nome" scope="request" class="java.lang.String" />
    <jsp:useBean id="quantidade" scope="request" class="java.lang.String" />
    <jsp:useBean id="marca" scope="request" class="java.lang.String" />
    <jsp:useBean id="descricao" scope="request" class="java.lang.String" />
    <jsp:useBean id="modelo" scope="request" class="java.lang.String" />
    <jsp:useBean id="cor" scope="request" class="java.lang.String" />
    <jsp:useBean id="sistema" scope="request" class="java.lang.String" />
    <jsp:useBean id="processador" scope="request" class="java.lang.String" />
    <jsp:useBean id="chip" scope="request" class="java.lang.String" />
    <jsp:useBean id="interna" scope="request" class="java.lang.String" />
    <jsp:useBean id="ram" scope="request" class="java.lang.String" />
    <jsp:useBean id="display" scope="request" class="java.lang.String" />
    <jsp:useBean id="camera" scope="request" class="java.lang.String" />
    <jsp:useBean id="bateria" scope="request" class="java.lang.String" />
    <%@ page contentType="text/html; charset=UTF-8" %>

    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

        <title><%= nome %></title>
        <link rel="sortcut icon" href="img/logotitulo.png" type="image/x-icon" />

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
        <%@include file="/header.html" %>
        <!-- /HEADER -->

        <!-- INCLUI O MENU -->
        <%@include file="/menuCliente.html" %>

        <!-- BREADCRUMB -->
        <div id="breadcrumb">
            <div class="container">
                <ul class="breadcrumb">
                    <li><a href="index.html">Home</a></li>
                    <li><a href="products.html">Produtos</a></li>
                    <li class="active"><%= nome %></li>
                </ul>
            </div>
        </div>
        <!-- /BREADCRUMB -->

        <!-- section -->
        <div class="section">
            <!-- container -->
            <div class="container">
                <!-- row -->
                <div class="row">
                    <!--  Product Details -->
                    <div class="product product-details clearfix">
                        <div class="col-md-6">
                            <div id="product-main-view">
                                <div class="product-view">
                                    <img src="./img/banner_iphonex.jpg" class="imgPreview" alt="">
                                </div>
                                <div class="product-view">
                                    <img src="./img/banner_iphonex_lado.jpg" class="imgPreview" alt="">
                                </div>
                                <div class="product-view">
                                    <img src="./img/banner_iphonex_tras.jpg" class="imgPreview" alt="">
                                </div>
                            </div>
                            <div id="product-view">
                                <div class="product-view">
                                    <img src="./img/banner_iphonex.jpg" class="imgMini" alt="">
                                </div>
                                <div class="product-view">
                                    <img src="./img/banner_iphonex_lado.jpg" class="imgMini" alt="">
                                </div>
                                <div class="product-view">
                                    <img src="./img/banner_iphonex_tras.jpg" class="imgMini" alt="">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="product-body">
                                <div class="product-label">
                                    <span>Novo</span>
                                    <!-- % de Desconto 
                                            <span class="sale">-20%</span>
                                    --> 
                                </div>
                                <h2 class="product-name"><%= nome %></h2>
                                <h3 class="product-price">R$ <%= preco %>
                                    <!-- Quantidade de Deconto	
                                    <del class="product-old-price">$45.00</del> 
                                    -->
                                </h3>
                                <p><strong>Disponibilidade:</strong> <%= quantidade %></p>
                                <p><strong>Marca:</strong>  <%= marca %></p>
                                <p><%= descricao %></p>
                                <div class="product-options">
                                </div>
                                
                                <form action="XXXXXXXXXX">
                                    <div class="product-btns">
                                        <input type="hidden" name="idProduto" id="idProduto" value="<%= idProduto %>">
                                        <div class="qty-input">
                                            <span class="text-uppercase">Quantidade: </span>
                                            <input class="input" type="number" name="quantidade" id="quantidade" value="">
                                        </div>
                                        <button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i> Adicionar ao Carrinho</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="product-tab">
                                <ul class="tab-nav">
                                    <li class="active"><a data-toggle="tab" href="#tab2">Ficha Técnica</a></li>
                                </ul>
                                <div class="tab-content">
                                    <div id="tab2" class="tab-pane fade in active">
                                        <table id="vertical-1">
                                            <p>	<tr>
                                                <th><b>Marca</b></th>
                                                <td colspan="2"></td>
                                                <td><%= marca %></td>
                                            </tr>									
                                            <tr>
                                                <th><b>Modelo</b></th>
                                                <td colspan="2"></td>
                                                <td><%= modelo %></td>
                                            </tr>
                                            <tr>
                                                <th><b>Cor</b></th>
                                                <td colspan="2"></td>
                                                <td><%= cor %></td>
                                            </tr>
                                            <tr>
                                                <th><b>Sistema Operacional</b></th>
                                                <td colspan="2"></td>
                                                <td><%= sistema %></td>
                                            </tr>
                                            <tr>
                                                <th><b>Processador</b></th>
                                                <td colspan="2"></td>
                                                <td><%= processador %></td>
                                            </tr>
                                            <tr>
                                                <th><b>Tipo de Chip</b></th>
                                                <td colspan="2"></td>
                                                <td><%= chip %></td>
                                            </tr>
                                            <tr>
                                                <th><b>Memoria Interna</b></th>
                                                <td colspan="2"></td>
                                                <td><%= interna %></td>
                                            </tr>
                                            <tr>
                                                <th><b>Memória RAM</b></th>
                                                <td colspan="2"></td>
                                                <td><%= ram %></td>
                                            </tr>
                                            <tr>
                                                <th><b>Tamanho do Display</b></th>
                                                <td colspan="2"></td>
                                                <td><%= display %></td>
                                            </tr>
                                            <tr>
                                                <th><b>Câmera Traseira, Frontal</b></th>
                                                <td colspan="2"></td>
                                                <td><%= camera %></td>
                                            </tr>
                                            <th><b>Bateria</b></th>
                                            <td colspan="2"></td>
                                            <td><%= bateria %></td>
                                            </tr>
                                            </p>
                                        </table>
                                    </div>								
                                </div>
                            </div>
                        </div>

                    </div>
                    <!-- /Product Details -->
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
                <div class="row">
                    <!-- section title -->
                    <div class="col-md-12">
                        <div class="section-title">
                            <h2 class="title">Recomendados Para Você</h2>
                        </div>
                    </div>
                    <!-- section title -->

                    <!-- Product Single -->
                    <div class="col-md-3 col-sm-6 col-xs-6">
                        <div class="product product-single">
                            <div class="product-thumb">
                                <button class="main-btn quick-view"><i class="fa fa-search-plus"></i> Quick view</button>
                                <img src="./img/product04.jpg" alt="">
                            </div>
                            <div class="product-body">
                                <h3 class="product-price">$32.50</h3>
                                <div class="product-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star-o empty"></i>
                                </div>
                                <h2 class="product-name"><a href="#">Product Name Goes Here</a></h2>
                                <div class="product-btns">
                                    <button class="main-btn icon-btn"><i class="fa fa-heart"></i></button>
                                    <button class="main-btn icon-btn"><i class="fa fa-exchange"></i></button>
                                    <button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i> Add to Cart</button>
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
                                    <span>New</span>
                                </div>
                                <button class="main-btn quick-view"><i class="fa fa-search-plus"></i> Quick view</button>
                                <img src="./img/product03.jpg" alt="">
                            </div>
                            <div class="product-body">
                                <h3 class="product-price">$32.50</h3>
                                <div class="product-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star-o empty"></i>
                                </div>
                                <h2 class="product-name"><a href="#">Product Name Goes Here</a></h2>
                                <div class="product-btns">
                                    <button class="main-btn icon-btn"><i class="fa fa-heart"></i></button>
                                    <button class="main-btn icon-btn"><i class="fa fa-exchange"></i></button>
                                    <button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i> Add to Cart</button>
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
                                <button class="main-btn quick-view"><i class="fa fa-search-plus"></i> Quick view</button>
                                <img src="./img/product02.jpg" alt="">
                            </div>
                            <div class="product-body">
                                <h3 class="product-price">$32.50 <del class="product-old-price">$45.00</del></h3>
                                <div class="product-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star-o empty"></i>
                                </div>
                                <h2 class="product-name"><a href="#">Product Name Goes Here</a></h2>
                                <div class="product-btns">
                                    <button class="main-btn icon-btn"><i class="fa fa-heart"></i></button>
                                    <button class="main-btn icon-btn"><i class="fa fa-exchange"></i></button>
                                    <button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i> Add to Cart</button>
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
                                    <span>New</span>
                                    <span class="sale">-20%</span>
                                </div>
                                <button class="main-btn quick-view"><i class="fa fa-search-plus"></i> Quick view</button>
                                <img src="./img/product01.jpg" alt="">
                            </div>
                            <div class="product-body">
                                <h3 class="product-price">$32.50 <del class="product-old-price">$45.00</del></h3>
                                <div class="product-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star-o empty"></i>
                                </div>
                                <h2 class="product-name"><a href="#">Product Name Goes Here</a></h2>
                                <div class="product-btns">
                                    <button class="main-btn icon-btn"><i class="fa fa-heart"></i></button>
                                    <button class="main-btn icon-btn"><i class="fa fa-exchange"></i></button>
                                    <button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i> Add to Cart</button>
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
        <footer id="footer" class="section section-grey">
            <!-- container -->
            <div class="container">
                <!-- row -->
                <div class="row">
                    <!-- footer widget -->
                    <div class="col-md-3 col-sm-6 col-xs-6">
                        <div class="footer">
                            <!-- footer logo -->
                            <div class="footer-logo">
                                <a class="logo" href="#">
                                    <p>softEletro2018</p>
                                    <img src="./img/logo.png" alt="">
                                </a>
                            </div>
                            <!-- /footer logo -->
                        </div>
                    </div>
                    <!-- /footer widget -->

                    <!-- footer widget -->
                    <div class="col-md-3 col-sm-6 col-xs-6">
                        <div class="footer">
                            <h3 class="footer-header">Minha Conta</h3>
                            <ul class="list-links">
                                <li><a href="#">Minha Conta</a></li>
                                <li><a href="#">Login</a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- /footer widget -->

                    <div class="clearfix visible-sm visible-xs"></div>

                    <!-- footer widget -->
                    <div class="col-md-3 col-sm-6 col-xs-6">
                        <div class="footer">
                            <h3 class="footer-header">ServiÃ§o ao cliente</h3>
                            <ul class="list-links">
                                <li><a href="#">Sobre</a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- /footer widget -->
                    <!-- /footer subscribe -->
                </div>
                <!-- /row -->
                <hr>
                <!-- row -->
                <div class="row">
                    <div class="col-md-8 col-md-offset-2 text-center">
                        <!-- footer copyright -->
                        <div class="footer-copyright">
                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                            Copyright &copy;<script>document.write(new Date().getFullYear());</script> softEletro
                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        </div>
                        <!-- /footer copyright -->
                    </div>
                </div>
                <!-- /row -->
            </div>
            <!-- /container -->
        </footer>
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
