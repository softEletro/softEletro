<!DOCTYPE html>
<html lang="en">

<head>



	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

	<title>SoftEletro - Cadastro Cliente</title>
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
		<!-- top Header -->
		<div id="top-header">
			<div class="container">
				<div class="pull-left">
					<span>Bem Vindo!</span>
				</div>
			</div>
		</div>
		<!-- /top Header -->

		<!-- header -->
		<div id="header">
			<div class="container">
				<div class="pull-left">
					<!-- Logo -->
					<div class="header-logo">
						<a class="logo" href="#">
							<img src="./img/logo.png" alt="">
						</a>
					</div>
					<!-- /Logo -->

					<!-- Search -->
					<div class="header-search">
							<input class="input search-input" type="text" placeholder="Procure o Produto...">
							<select class="input search-categories">
								<option value="0">Categorias</option>
								<option value="1">Computador</option>
								<option value="1">Celular</option>
							</select>
							<button class="search-btn"><i class="fa fa-search"></i></button>
						</div>
					<!-- /Search -->
				</div>
				<div class="pull-right">
					<ul class="header-btns">
						<!-- Account -->
						<li class="header-account dropdown default-dropdown">
							<div class="dropdown-toggle" role="button" data-toggle="dropdown" aria-expanded="true">
								<div class="header-btns-icon">
									<i class="fa fa-user-o"></i>
								</div>
								<strong class="text-uppercase">Minha Conta <i class="fa fa-caret-down"></i></strong>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							</div>
							<a href="#" class="text-uppercase">Entrar/Cadastrar</a>
			
							<ul class="custom-menu">
								<li><a href="#"><i class="fa fa-user-o"></i> Minha Conta</a></li>
								<li><a href="#"><i class="fa fa-check"></i> Lista de Pedidos</a></li>
								<li><a href="#"><i class="fa fa-exchange"></i> Editar Perfil</a></li>
							</ul>
						</li>
						<!-- /Account -->
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<!-- Cart -->
						<li class="header-cart dropdown default-dropdown">
							<a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
								<div class="header-btns-icon">
									<i class="fa fa-shopping-cart"></i>
									<span class="qty">3</span>
								</div>
								<strong class="text-uppercase">Carrinho:</strong>
								<br>
								<span>R$</span>
							</a>
							<div class="custom-menu">
								<div id="shopping-cart">
									<div class="shopping-cart-list">
										<div class="product product-widget">
											<div class="product-thumb">
												<img src="./img/Aifoni_XIS_300x300.jpg" alt="">
											</div>
											<div class="product-body">
												<h3 class="product-price">$32.50 <span class="qty">x3</span></h3>
												<h2 class="product-name"><a href="#">Product Name Goes Here</a></h2>
											</div>
											<button class="cancel-btn"><i class="fa fa-trash"></i></button>
										</div>
										<div class="product product-widget">
											<div class="product-thumb">
												<img src="./img/thumb-product01.jpg" alt="">
											</div>
											<div class="product-body">
												<h3 class="product-price">$32.50 <span class="qty">x3</span></h3>
												<h2 class="product-name"><a href="#">Product Name Goes Here</a></h2>
											</div>
											<button class="cancel-btn"><i class="fa fa-trash"></i></button>
										</div>
									</div>
									<div class="shopping-cart-btns">
										<button class="main-btn">View Cart</button>
										<button class="primary-btn">Checkout <i class="fa fa-arrow-circle-right"></i></button>
									</div>
								</div>
							</div>
						</li>
						<!-- /Cart -->

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
				<!-- category nav -->
				<div class="category-nav show-on-click">
					<span class="category-header">Categories <i class="fa fa-list"></i></span>
				</div>
				<!-- /category nav -->

				<!-- menu nav -->
				<div class="menu-nav">
					<span class="menu-header">Menu <i class="fa fa-bars"></i></span>
					<ul class="menu-list">
                            <li><a href="#">Home</a></li>
                            <li class="dropdown mega-dropdown"><a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">Computadores <i class="fa fa-caret-down"></i></a>
                                <div class="custom-menu">
                                    <div class="row">
                                        <div class="col-md-2">
                                            <ul class="list-links">
                                                <li>
                                                    <h3 class="list-links-title">Marcas</h3></li>
                                                <li><a href="#">Acer</a></li>
                                                <li><a href="#">Asus</a></li>
                                                <li><a href="#">Samsung</a></li>
                                                <li><a href="#">HP</a></li>
												
                                            </ul>
                                            <hr class="hidden-md hidden-lg">
                                        </div>
										<div class="col-md-2">
                                            <ul class="list-links">
												<li><br></li>
												<li><a href="#">Dell</a></li>
												<li><a href="#">Lenovo</a></li>
												<li><a href="#">Sony</a></li>
												<li><a href="#">Toshiba</a></li>
											</ul>
										</div>

                                    </div>
                                    <div class="row hidden-sm hidden-xs">
                                        <div class="col-md-12">
                                            <hr>
                                            <a class="banner banner-1" href="#">
                                                <img src="./img/banner05.jpg" alt="" style="width: 350px">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="dropdown mega-dropdown full-width"><a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">Celulares <i class="fa fa-caret-down"></i></a>
                                <div class="custom-menu">
                                    <div class="row">
                                        <div class="col-md-3">
                                            <div class="hidden-sm hidden-xs">
                                                <a class="banner banner-1" href="#">
                                                    <img src="./img/banner16.jpg" alt="">
                                                    <div class="banner-caption text-center">
                                                        <h3 class="white-color text-uppercase"></h3>
                                                    </div>
                                                </a>
                                                <hr>
                                            </div>
                                            <ul class="list-links">
                                                <li>
                                                    <h3 class="list-links-title">Apple</h3></li>
                                                <li><a href="#">iPhone X</a></li>
                                                <li><a href="#">iPhone 8 Plus</a></li>
                                                <li><a href="#">iPhone 7s Plus</a></li>
                                                <li><a href="#">iPhone 6s Plus</a></li>
                                            </ul>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="hidden-sm hidden-xs">
                                                <a class="banner banner-1" href="#">
                                                    <img src="./img/banner17.jpg" alt="">
                                                    <div class="banner-caption text-center">
                                                        <h3 class="white-color text-uppercase"></h3>
                                                    </div>
                                                </a>
                                            </div>
                                            <hr>
                                            <ul class="list-links">
                                                <li>
                                                    <h3 class="list-links-title">Samsung</h3></li>
                                                <li><a href="#">Galaxy S9+</a></li>
                                                <li><a href="#">Galaxy S9</a></li>
                                                <li><a href="#">Galaxy S8 Edge Plus</a></li>
                                                <li><a href="#">Galaxy Note 8</a></li>
                                            </ul>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="hidden-sm hidden-xs">
                                                <a class="banner banner-1" href="#">
                                                    <img src="./img/banner19.jpg" alt="">
                                                    <div class="banner-caption text-center">
                                                        <h3 class="white-color text-uppercase"></h3>
                                                    </div>
                                                </a>
                                            </div>
                                            <hr>
                                            <ul class="list-links">
                                                <li>
                                                    <h3 class="list-links-title">Motorola</h3></li>
                                                <li><a href="#">Moto Z2 Force</a></li>
                                                <li><a href="#">Moto Z2 Play</a></li>
                                                <li><a href="#">Moto X4</a></li>
                                                <li><a href="#">Moto G5S Plus</a></li>

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
				<li class="active">Cadastro Cliente</li>
			</ul>
		</div>
	</div>
	<!-- /BREADCRUMB -->

	<!-- section -->
	<div class="section">
	<form action="SalvarCliente">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<div class="col-sm-3">
					<label>Nome</label>
					<input type="text" class="form-control" id="nome" name="nome" value="">
				</div>
				<div class="col-sm-2">
					<label>Sobrenome</label>
					<input type="text" class="form-control" id="sobrenome" name="sobrenome" value="" >				
				</div>
				<div class="col-sm-2">
					<label>CPF</label>
					<input type="text" class="form-control" id="cpf" name="cpf" value="">
				</div>
				<div class="col-sm-2">
					<label>Telefone</label>
					<input type="text" class="form-control" id="telefone" name="telefone" value="" >				
				</div>				
			</div>
			<br>
			<div class="row">
				<div class="col-sm-3">
						<label>Endereço</label>
						<input type="text" class="form-control" id="endereco" name="endereco" value="">
				</div>
				<div class="col-sm-1">
						<label>Numero</label>
						<input type="text" class="form-control" id="numero" name="numero" value="">
				</div>
				<div class="col-sm-1">
						<label>Comp.</label>
						<input type="text" class="form-control" id="complemento" name="complemento" value="">
				</div>
				<div class="col-sm-2">
						<label>Bairro</label>
						<input type="text" class="form-control" id="bairro" name="bairro" value="">
				</div>
				<div class="col-sm-3">
						<label>Cidade</label>
						<input type="text" class="form-control" id="cidade" name="cidade" value="">
				</div>
				<div class="col-sm-1">
						<label>Estado</label>
						<select name="estado" id="estado" class="form-control">
							<option value="0" selected="selected"></option>
							<option value="1">AC </option>
							<option value="2">AL </option>
							<option value="3">AP </option>
							<option value="4">AM </option>
							<option value="5">BA </option>
							<option value="6">CE </option>
							<option value="7">DF </option>
							<option value="8">ES </option>
							<option value="9">GO </option>
							<option value="10">MA </option>
							<option value="11">MT </option>
							<option value="12">MS </option>
							<option value="13">MG </option>
							<option value="14">PA </option>
							<option value="15">PB </option>
							<option value="16">PR </option>
							<option value="17">PE </option>
							<option value="18">PI </option>
							<option value="19">RJ </option>
							<option value="20">RN </option>
							<option value="21">RS </option>
							<option value="22">RO </option>
							<option value="23">RR </option>
							<option value="24">SC </option>
							<option value="25">SP </option>
							<option value="26">SE </option>
							<option value="27">TO </option>
						</select>
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-sm-3">
						<label>Cep</label>
						<input type="text" class="form-control" id="cep" name="cep" value="">
				</div>
				<div class="col-sm-3">
						<label>Senha</label>
						<input type="password" class="form-control" id="senha" name="senha" value="">
				</div>
				<div class="col-sm-3">
						<label>E-mail</label>
						<input type="mail" class="form-control" id="email" name="email" value="">
				</div>
				<div class="col-sm-2">					
					<input type="hidden" class="form-control" id="ativo" name="ativo" value="a">
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

