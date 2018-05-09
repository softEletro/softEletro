<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>



	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
	<title>SoftEletro - Cadastro de Ficha Técnica</title>
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
        <%@include file="/header.html" %>
        
        <!-- INCLUI O MENU -->
        <%@include file="/menuCliente.html" %>


	<!-- BREADCRUMB -->
	<div id="breadcrumb">
		<div class="container">
			<ul class="breadcrumb">
				<li><a href="#">Home</a></li>
				<li class="active">Ficha Técnica</li>
			</ul>
		</div>
	</div>
	<!-- /BREADCRUMB -->

	<!-- section -->
	<div class="section">
            <form action="SalvarCliente">
                <!-- container -->
		<div class="container">
                    <div class="row">
                        <div class="col-sm-3">
                            <label>Nome: iPhone X</label>
                            <input class="form-control" id="IDproduto" name="IDproduto" value="1" disabled>
                        </div>
                </div>
                    <!-- row -->
                    <div class="row">
                        <div class="col-sm-3">
                            <label>Modelo</label>
                            <input type="text" class="form-control" id="modelo" name="modelo" value="">
                        </div>
                        <div class="col-sm-3">
                            <label>Cor</label>
                            <input type="text" class="form-control" id="cor" name="cor" value="" >				
                        </div>
                        <div class="col-sm-3">
                            <label>Sistema Operacional</label>
                            <input type="text" class="form-control" id="sistema" name="sistema" value="">
                        </div>
                        <div class="col-sm-3">
                            <label>Processador</label><br>
                            <input type="text" class="form-control" id="processador" name="processador" value="">
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-sm-2">
                            <label>Tipo de Chip</label>
                            <select name="chip" id="chip" class="form-control">
                                <option value="0" selected="selected">
                                </option>
                                <option value="1">
                                    Chip
                                </option>
                                <option value="2">
                                    Micro
                                </option>
                                <option value="3">
                                    Nano
                                </option>
                            </select>			
                        </div>
                        <div class="col-sm-3">
                            <label>Memória Interna</label>
                            <input type="text" class="form-control" id="interna" name="interna" value="">
                        </div>
                        <div class="col-sm-2">
                            <label>Memória RAM</label>
                            <input type="text" class="form-control" id="ram" name="ram" value="">
                            
                        </div>
                        <div class="col-sm-2">
                            <label>Tamanho do Display</label>				
                            <input type="text" class="form-control" id="display" name="display" value="">
                        </div>
                        <div class="col-sm-2">
                            <label>Camera Traseira/Frontal</label>
                            <input type="text" class="form-control" id="camera" name="camera" value="">
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-sm-3">
                            <label>Bateria</label>
                            <input type="text" class="form-control" id="bateria" name="bateria" value="">
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
	<%@include file="/footerCliente.html" %>
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

