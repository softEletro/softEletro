<%-- 
    Document   : BuscarProduto
    Created on : 17/04/2018, 11:14:40
    Author     : bcustodio
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

		<title>softEletro - Buscar Produtos</title>
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
	<%@include file="src/headerAdm.html" %>
	<!-- /HEADER -->

	<!-- NAVIGATION -->
	<%@include file="src/menu.html" %>
	<!-- /NAVIGATION -->

	<!-- BREADCRUMB -->
	<div id="breadcrumb">
		<div class="container">
			<ul class="breadcrumb">
				<li><a href="#">Home</a></li>
				<li class="active">Buscar Produto</li>
			</ul>
		</div>
	</div>
	<!-- /BREADCRUMB -->

	<!-- section -->
	<div class="section">
		<!-- container -->
		<div class="container">
		<form action="BuscarProduto">
			<!-- row -->
			<div class="row">
				<div class="col-sm-2">
					<label>Id do Produto</label>
						<input class="form-control" type="text" name="id" value="">
				</div>
				<div class="col-sm-2">
					<label>Nome do Produto</label>
						<input class="form-control" type="text" name="nome" value="">
				</div>
			</div>
				<br>
				<input class="btn btn-default" type="submit" name="buscar" value="Buscar" title="Buscar registros"/>
		</form>
				<br>
				<br>
                                <jsp:useBean id="lista" scope="request" class="java.util.List" />
				<table class="table table-hover">
					<thead>
						<tr>
							<th>Codigo</th>
							<th>Nome</th>
							<th>Marca</th>
							<th>Preço</th>
                                                        <th>
                                                            <a href="ListaProdutoAtivo"><span title="Mostrar clientes ativos" class="glyphicon glyphicon-plus"></span></a>
                                                            <a href="ListaProdutoInativos"><span title="Mostrar clientes inativos" class="glyphicon glyphicon-minus"></span></a>
                                                            <a href="ListaProduto"><span title="Mostrar todos os clientes" class="glyphicon glyphicon-asterisk"></span></a>
                                                        </th>
						</tr>
					</thead>
					<tbody>
                                                        <% for (int i=0;i<lista.size();i++) {
                                                            ProdutoBean Pro = (ProdutoBean)lista.get(i); %>
                                                            <tr <%if (Pro.getAtivo().equals("i")) {%>class="danger"<% } %>>
                                                                         <td><%= Pro.getId() %></td>
                                                                         <td><%= Pro.getNome() %></td>
                                                                         <td><%= Pro.getMarca() %></td>
                                                                         <td><%= Pro.getPreco() %></td>
                                                                         <td>
                                                                            
                                                                                <a href="MostrarProduto?id=<%= Pro.getId() %>"><span title="Editar Produto" class="glyphicon glyphicon-pencil"></span></a>
                                                                                <a href="MostraDetalhe?id=<%= Pro.getId() %>"><span title="Ver Produto" class="glyphicon glyphicon-phone"></span></a>
                                                                                <a href="MostrarFicha?idProduto=<%= Pro.getId() %>"><span title="Alterar Ficha Técnica" class="glyphicon glyphicon-list-alt"></span></a>
                                                                                <% if (Pro.getAtivo().equals("a")) { %>
                                                                                <a href="InativarProduto?id=<%= Pro.getId() %>">
                                                                                <span title="Inativar Produto" class="glyphicon glyphicon-minus"></span></a>
                                                                                <% } else { %>
                                                                                            <a href="AtivarProduto?id=<%= Pro.getId() %>">
                                                                                            <span title="Ativar Produto" class="glyphicon glyphicon-plus"></span></a>
                                                                                        <% } %>
                                                                                                                                              
                                                                            
                 
                                                                         </td>
                                                            </tr>
                                                            <% } %>
                                                   
                                               
					</tbody>
				</table>
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /section -->

	<!-- FOOTER -->
	<%@include file="src/footer.html" %>
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
