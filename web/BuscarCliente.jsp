<%-- 
    Document   : BuscarCliente
    Created on : 15/04/2018, 21:02:21
    Author     : BrendaÀ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.bean.ClienteBean"%>
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
	<header>


		<!-- header -->
		<div id="header" body style="background-color:#F8694A;">
			<div class="container">
				<div class="pull-left" >
					<!-- Logo -->
					<h1>
					softEletro.com.br
					</h1>
					<!-- /Logo -->
				</div>
				<div class="pull-right">
					<ul class="header-btns">
						<!-- Mobile nav toggle-->
						<li class="nav-toggle">
							<button class="nav-toggle-btn main-btn icon-btn"><i class="fa fa-bars"></i></button>
						</li>
						<!-- / Mobile nav toggle -->
					</ul>
				</div>
			</div>
			<!-- header -->
		</div>
		<!-- container -->
	</header>
	<!-- /HEADER -->

	<!-- NAVIGATION -->
	<div id="navigation">
		<!-- container -->
		<div class="container">
			<div id="responsive-nav">
			
				<!-- /category nav -->

				<!-- menu nav -->
				<div class="menu-nav">
					<span class="menu-header">Menu <i class="fa fa-bars"></i></span>
					<ul class="menu-list">
						<li><a href="#">Home</a></li>
						<li class="dropdown mega-dropdown"><a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">Cliente <i class="fa fa-caret-down"></i></a>
							<div class="custom-menu">
								
									
										<ul class="list-links">
											<li>
											<li><a href="#">Buscar Cliente</a></li>
											<li><a href="#">Cadastrar Cliente</a></li>
											</li>
										</ul>
										<hr class="hidden-md hidden-lg">
									
								
							</div>
						</li>
						<li class="dropdown mega-dropdown full-width"><a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">Produto <i class="fa fa-caret-down"></i></a>
							<div class="custom-menu">
								<div class="row">
									<div class="col-md-3">
										<ul class="list-links">
											<li><a href="#">Buscar Produto</a></li>
											<li><a href="#">Cadastrar Produto</a></li>
										</ul>
									</div>
								</div>
							</div>
						</li>
						
						<li class="dropdown mega-dropdown full-width"><a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">Pedido <i class="fa fa-caret-down"></i></a>
							<div class="custom-menu">
								<div class="row">
									<div class="col-md-3">
										<ul class="list-links">
											<li><a href="#">Venda Produto</a></li>
											<li><a href="#">Historico Pedidos do Cliente</a></li>
											<li><a href="#">Lista de Itens</a></li>
										</ul>
									</div>
								</div>
							</div>
						</li>
					</ul>
				</div>
				<!-- menu nav -->
			</div>
		</div>
		<!-- /container -->
	</div>
	<!-- /NAVIGATION -->

	<!-- BREADCRUMB -->
	<div id="breadcrumb">
            <div class="container">
                <ul class="breadcrumb">
                    <li><a href="#">Home</a></li>
                    <li class="active">Buscar Cliente</li>
                </ul>
            </div>
	</div>
	<!-- /BREADCRUMB -->

	<!-- section -->
	<div class="section">
            <!-- container -->
            <div class="container">
		<form action="BuscarCliente">
                    <div class="row">
                        <div class="col-sm-2">
                            <label>Nome</label>
                            <input class="form-control" type="text" id="nome" name="nome" value="">
                        </div>
                    </div>
                    <br>
                    <input class="btn btn-default" type="submit" name="buscar" value="Buscar" title="Buscar registros"/>
		</form>
                <br>
                <br>
                <!-- row -->
                <jsp:useBean id="lista" scope="request" class="java.util.List" />
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Nome</th>
                            <th>E-mail</th>
                            <th>Endereço</th>
                            <th>Telefone</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <% for (int i=0;i<lista.size();i++) {
                            ClienteBean cli = (ClienteBean)lista.get(i); %>
                            <tr>
                                <td><%= cli.getId() %></td>
                                <td><%= cli.getNome() %></td>
                                <td><%= cli.getEmail() %></td>
                                <td><%= cli.getEndereco() %></td>
                                <td><%= cli.getTelefone() %></td>
                                <td>
                                    <a href="cadastrocliente.html?id=<%= cli.getId() %>"><span title="Editar Cliente" class="glyphicon glyphicon-pencil"></span></a>
                                    <span title="Ver Cliente" class="glyphicon glyphicon-user"></span>
                                    <span title="Ver Pedidos" class="glyphicon glyphicon-list-alt"></span>
                                    <a href=""><span title=
                                                     <% if (cli.getAtivo().equals("a")) {%>"Inativar" <% } else { %>"Ativar"<% } %>                                                    
                                                    class="glyphicon glyphicon-wrench"></span></a>
                                </td>
                            </tr>
                        <% } %>
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
			</div>
			<!-- /row -->
			<hr>
			<!-- row -->
			<div class="row">
				<div class="col-md-8 col-md-offset-2 text-center">
					<!-- footer copyright -->
					<div class="footer-copyright">
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						Copyright &copy;<script>document.write(new Date().getFullYear());</script> SoftEletro</a>
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
