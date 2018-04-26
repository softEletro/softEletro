<%-- 
    Document   : compraProduto
    Created on : 25/04/2018, 20:46:16
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

	<title>SoftEletro - Compra Produto</title>
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
	<!-- /HEADER -->

	<!-- NAVIGATION -->
	<%@include file="/menuCliente.html" %>
	<!-- /NAVIGATION -->

	<!-- BREADCRUMB -->
	<div id="breadcrumb">
		<div class="container">
			<ul class="breadcrumb">
				<li><a href="#">Home</a></li>
				<li class="active">Compra Produto</li>
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
				<div class="table-responsive">          
   <table class="table">
	<thead>
        <th>#</th>
        <th>Produto</th>
        <th>Quantidade</th>
        <th>Preço</th>
      </thead>
      <tbody>
        <tr>
          <th>1</th>
			<td><img src="img/motoxcarrinho.png"> Motorola Moto X4</td>
			<td class="quantidade">
				<select name="quantidade">
					<option value="1">1</option>
					<option value="1">2</option>
					<option value="1">3</option>
					<option value="1">4</option>
					<option value="1">5</option>
					<option value="1">6</option>
					<option value="1">7</option>
					<option value="1">8</option>
					<option value="1">9</option>
					</select>
					</td>
			<td>R$ 999,00	</td>
			<td><span title="Remover Produto" class="glyphicon glyphicon-remove"></td>
		<tr>
          <th>2</th>
			<td><img src="img/j7carrinho.png">Samsung Galaxy J7 Prime</td>
			<td class="quantidade">
				<select name="quantidade">
					<option value="1">1</option>
					<option value="1">2</option>
					<option value="1">3</option>
					<option value="1">4</option>
					<option value="1">5</option>
					<option value="1">6</option>
					<option value="1">7</option>
					<option value="1">8</option>
					<option value="1">9</option>
					</td>
			<td>R$ 1099,00	</td>
			<td><span title="Remover Produto" class="glyphicon glyphicon-remove"></td>
		</tr>
		<tr>
			<td colspan="2"></td>
			<td><strong>Forma de pagamento</strong></td>
			<td>
				<select name="formapagamento">
					<option value="0" selected="selected"></option>
					<option value="1">Boleto</option>
					<option value="1">Cartão</option>
				</select>
			<td>
		</tr>
		<tr>
			<td colspan="2"></td>
			<td><strong>Desconto</strong></td>
			<td>R$ 0.000,00</td>
			<td></td>
		</tr>
		<tr></tr>
		<tr>
			<td colspan="2"></td>
			<td><h3>Valor total</h3></td>
			<td>R$ 2.098,00</td>
			<td></td>
		</tr>
		</tbody>
    	</table>
	
	<br><!--pulando linhas-->
	<br><!--pulando linhas-->
	<center><input class="btn btn-default btn-lg" style="background-color:tomato" type="submit" name="btnfinalizarcompra" value="Finalizar Compra">
					
			
			<!--cart total>
						</div> <!-- .cart-total -->
						
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /section -->

	
	<br><!--/pulando linhas -->
	<br><!--/pulando linhas -->
    <br> <!--/pulando linhas -->
	<br><!--/pulando linhas -->
	
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

