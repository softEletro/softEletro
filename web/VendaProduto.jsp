<%-- 
    Document   : VendaProduto
    Created on : 17/05/2018, 15:43:18
    Author     : leona
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
	<title>softEletro - Venda Produtos</title>
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
	<header>
	<%@include file="src/header.jsp" %>
        <!-- /HEADER -->

        <!-- NAVIGATION -->
          <%@include file="src/menuCliente.html" %>
      

	<!-- section -->
	<div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<div class="col-sm-3">
					<h4 style="color: #F8694A"><strong>Numero do Pedido: </strong>56972205</h4>
				</div>
				<div class="col-sm-3">
					<strong>Status: </strong>Entregue
				</div>
			</div>
			<div class="row">
				<div class="col-sm-3">
					Data da Entrega: 5 de Maio de 2020.
				</div>              
			</div>
			<br>
			<table class="table table-default">
				<thead>
					<th>Produto</th>
					<th>Quantidade</th>
					<th>Preço</th>
					<th>Valor Total</th>
				</thead>
				<tbody>
					
				</tbody>
			</table>
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
                            <h3 class="footer-header">Serviço ao cliente</h3>
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
