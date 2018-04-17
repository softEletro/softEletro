<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

		<title>softEletro - Cadastro Produtos</title>
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
                                        <li><a href="ListaCliente">Listagem de Clientes</a></li>
                                        <li><a href="ClienteManut.jsp">Cadastrar Cliente</a></li>
                                    </ul>
                                    <hr class="hidden-md hidden-lg">
                                </div>
                            </li>
                            <li class="dropdown mega-dropdown"><a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">Produto <i class="fa fa-caret-down"></i></a>
                                <div class="custom-menu">
                                    <ul class="list-links">
                                        <li><a href="ListaProdutos">Listagem de Produtos</a></li>
                                        <li><a href="ProdutoManut.jsp">Cadastrar Produto</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li class="dropdown mega-dropdown"><a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">Pedido <i class="fa fa-caret-down"></i></a>
                                <div class="custom-menu">
                                    <ul class="list-links">
                                        <li><a href="#">Venda Produto</a></li>
                                        <li><a href="#">Historico Pedidos do Cliente</a></li>
                                        <li><a href="#">Lista de Itens</a></li>
                                    </ul>
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
				<li class="active">Cadastro Produto</li>
			</ul>
		</div>
	</div>
	<!-- /BREADCRUMB -->

	<!-- section -->
	<div class="section">
	<form action="SalvarProduto">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<div class="col-sm-2">
						<label>Produto</label>
						<select name="produto" id="produto" class="form-control">
							<option value="0" selected="selected"></option>
							<option value="1">Celular </option>
							<option value="2">Computador </option>
				</select>
			    </div>
			</div>
			<br>
			<div class="row">
			   	<div class="col-sm-3">
				    <label>Nome</label>
				    <input type="text" class="form-control" id="nome" name="nome" value="">
			    </div>
			    <div class="col-sm-3">
				    <label>Marca</label>
				    <input type="text" class="form-control" id="marca" name="marca" value="">
			    </div>
			    <div class="col-sm-2">
				    <label>Preço</label>
				    <input type="text" class="form-control" id="preco" name="preco" value="">
			    </div>
			    <div class="col-sm-2">
				    <label>Quantidade</label>
				    <input type="text" class="form-control" id="quantidade" name="quantidade" value="">
			    </div>
			</div><br>
			<div class="row">
				<div class="col-sm-6">
				    <label>Descrição</label>
				    <textarea rows="5" type="text" class="form-control" id="descricao" name="descricao" value=""></textarea>
			    </div>
				<div class="col-sm-4">
				    <label>Imagem</label>
				    <input type="text" class="form-control" id="imagem" name="imagem" value="">
			    </div>
			</div>
			<br>
			<input class="btn btn-default" type="submit" name="btnSalvar" value="Salvar">
			<!-- /row -->
		</div>
		<!-- /container -->
		</form>
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
