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
	<%@include file="/headerAdm.html" %>
	<!-- /HEADER -->
        
        <!-- INCLUI O MENU -->
        <%@include file="/menu.html" %>

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
        <jsp:useBean id="nome" scope="request" class="java.lang.String" />
        <jsp:useBean id="Produto" scope="request" class="java.lang.String" />
        <jsp:useBean id="Marca" scope="request" class="java.lang.String" />
        <jsp:useBean id="Descricao" scope="request" class="java.lang.String" />
        <jsp:useBean id="Imagem" scope="request" class="java.lang.String" />
    
        <%if(!nome.equals("")) { %>
        <form action="AlterarProduto">
            <jsp:useBean id="quantidade" scope="request" class="java.lang.Integer" />
            <jsp:useBean id="preco" scope="request" class="java.lang.Double" />
            <jsp:useBean id="id" scope="request" class="java.lang.Long" />
            <input type="hidden" id="id" name="id" value="<%= id %>" />
        <% } else { %>
            <form action="SalvaProduto">
        <% } %>
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
				    <input type="text" class="form-control" id="nome" name="nome" value="<%=nome%>">
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
				    <textarea rows="10" type="text" class="form-control" id="descricao" name="descricao" value=""></textarea>
			    </div>
				<div class="col-sm-4">
				    <label>Imagem 260x370</label>
				    <input type="text" class="form-control" id="imagem" name="imagem" value="">
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
	<%@include file="/footer.html" %>
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
