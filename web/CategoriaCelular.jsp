<%-- 
    Document   : CategoriaCelular
    Created on : 20/05/2018, 18:35:28
    Author     : leona
--%>
<%@page import="com.bean.ProdutoBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

	<title>Produtos</title>
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
        <%@include file="src/header.jsp" %>
    <!-- /HEADER -->

    <!-- NAVIGATION -->
        <%@include file="src/menuCliente.html" %>
	
	<!-- BREADCRUMB -->
	<div id="breadcrumb">
		<div class="container">
			<ul class="breadcrumb">
				<li><a href="index.jsp">Home</a></li>
				<li class="active">Produtos</li>
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
				<!-- ASIDE -->
				<!-- /ASIDE -->

				<!-- MAIN -->
					<!-- /store top filter -->

					<!-- STORE -->
        <jsp:useBean id="lista" scope="request" class="java.util.List" />
	<div id="store">
            <!-- row -->
            <div class="row">
                    <!-- Product Single -->
                    <% for (int i=0;i<lista.size();i++) {
                        ProdutoBean Pro = (ProdutoBean)lista.get(i); %>
                    <div class="col-md-4 col-sm-6 col-xs-6">
                            <div class="product product-single">
                                 <a class="main-btn quick-view" href="MostraDetalhe?id=<%= Pro.getId() %>"><i class="fa fa-search-plus"></i> Detalhes</a>
                                            <img src="./<%= Pro.getImagem() %>" alt="">
                                     <div class="product-body">

                                        <h3 class="product-price">R$ <%= Pro.getPreco() %></h3>
                                        <h2 class="product-name"><a href="#"><%= Pro.getNome() %></a></h2>
                                        <div class="product-btns">
                                        <button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i> Adicionar ao Carrinho</button>
                                        </div>
                                        </div>

                                    </div>
                            </div>
                    </div>
                    <% } %>


        </div>
                            </div>
                    </div>
                    <!-- /Product Single -->
            </div>
            <!-- /row -->
					
	<!-- FOOTER -->
       <%@include file="src/footerCliente.html" %><!-- /FOOTER -->


	<!-- jQuery Plugins -->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/slick.min.js"></script>
	<script src="js/nouislider.min.js"></script>
	<script src="js/jquery.zoom.min.js"></script>
	<script src="js/main.js"></script>

</body>

</html>
