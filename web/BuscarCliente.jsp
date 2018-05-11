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
    <jsp:useBean id="idUsuario" scope="session" class="java.lang.Integer" />
    <% if (idUsuario == 999) {%>
	<!-- HEADER -->
        <%@include file="src/headerAdm.html" %>
        
        <!-- INCLUI O MENU -->
        <%@include file="src/menu.html" %>

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
                            <th>
                                <a href="ListaClientesAtivos"><span title="Mostrar clientes ativos" class="glyphicon glyphicon-plus"></span></a>
                                <a href="ListaClientesInativos"><span title="Mostrar clientes inativos" class="glyphicon glyphicon-minus"></span></a>
                                <a href="ListaCliente"><span title="Mostrar todos os clientes" class="glyphicon glyphicon-asterisk"></span></a>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <% for (int i=0;i<lista.size();i++) {
                            ClienteBean cli = (ClienteBean)lista.get(i); 
                            if (cli.getId() != 999) { %>
                            <tr <%if (cli.getAtivo().equals("i")) {%>class="danger"<% } %>>
                                <td><%= cli.getId() %></td>
                                <td><%= cli.getNome() %> <%= cli.getSobrenome() %></td>
                                <td><%= cli.getEmail() %></td>
                                <td><%= cli.getEndereco() %></td>
                                <td><%= cli.getTelefone() %></td>
                                <td>
                                    <a href="MostrarCliente?id=<%= cli.getId() %>"><span title="Editar Cliente" class="glyphicon glyphicon-pencil"></span></a>
                                    <span title="Ver Pedidos" class="glyphicon glyphicon-list-alt"></span>
                                    <% if (cli.getAtivo().equals("a")) { %>
                                        <a href="InativarCliente?id=<%= cli.getId() %>">
                                            <span title="Inativar cliente" class="glyphicon glyphicon-minus"></span></a>
                                    <% } else { %>
                                        <a href="AtivarCliente?id=<%= cli.getId() %>">
                                            <span title="Ativar cliente" class="glyphicon glyphicon-plus"></span></a>
                                    <% } %>
                                </td>
                            </tr>
                            <% } %>
                        <% } %>
                    </tbody>
                </table>
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
        <% } else { %><h2>Você não tem acesso!</h2><% } %>
</body>

</html>
