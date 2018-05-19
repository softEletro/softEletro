<%-- 
    Document   : VendaProduto
    Created on : 17/05/2018, 21:30:17
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
        <%@include file="src/header.jsp" %>
        <!-- /HEADER -->

        <!-- NAVIGATION -->
        <%@include file="src/menuCliente.html" %>
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
                                    <jsp:useBean id="carrinho" scope="session" class="java.util.List" />
                                    <jsp:useBean id="nome" scope="request" class="java.util.List" />
                                    <jsp:useBean id="quantidade" scope="request" class="java.util.List" />
                                    <jsp:useBean id="preco" scope="request" class="java.util.List" />
                    
                                    <% for (int i=0;i<nome.size();i++) { %>
                                <tr id="Produto<%= i %>">
                                    <td><%= carrinho.get(i) %></td>
                                    <td><img src="<%= nome.get(i) %>" class="imgCarrinho"><%= nome.get(i) %></td>
                                    <td>
                                        <input class="input" type="number" name="quantidade" id="quantidade" value="<%= quantidade.get(i) %>">
                                    </td>
                                    <td><%= preco.get(i) %></td>
                                   
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
    <%@include file="src/footerCliente.html" %>
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

