<%-- 
    Document   : BuscarCliente
    Created on : 15/04/2018, 21:02:21
    Author     : BrendaÀ
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.bean.PedidoBean"%>
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
                    <li><a href="indexAdm.jsp">Home</a></li>
                    <li class="active">Buscar Cliente</li>
                </ul>
            </div>
	</div>
	<!-- /BREADCRUMB -->

	<!-- section -->
	<div class="section">
            <!-- container -->
            <div class="container">
                <br>
                <br>
                <!-- row -->
                <jsp:useBean id="lista" scope="request" class="java.util.List" />
                <script>
                    function ativo() {
                        alert("Cliente ativado com sucesso!");
                    }
                    
                    function inativo() {
                        alert("Cliente desativado com sucesso!");
                    }
                </script>
                
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>Número do pedido</th>
                            <th>Valor total</th>
                            <th>Status</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <% int numeroOld = 0;
                        DecimalFormat formato = new DecimalFormat("#,###.00");
                        for (int i=0;i<lista.size();i++) {
                            PedidoBean ped = (PedidoBean)lista.get(i);
                            Double valorTotal = ped.getQuantidade() * ped.getPreco();
                            String vlr = formato.format(valorTotal);
                            if (numeroOld != ped.getNumero()) {
                                if (!ped.getStatus().equals("Entregue")) { %>
                                    <tr>
                                        <td><%= ped.getNumero() %></td>
                                        <td>R$ <%= vlr %></td>
                                        <td><%= ped.getStatus() %></td>
                                        <td>
                                            <% if (ped.getStatus().equals("Pedido Feito")) { %>
                                            <a href="StatusAlterado?numero=<%= ped.getNumero() %>"><span title="Pedido sendo enviado" class="glyphicon glyphicon-send"></span></a>
                                            <% } else { %>
                                            <a href="PedidoEntregue?numero=<%= ped.getNumero() %>"><span title="Pedido entregue" class="glyphicon glyphicon-ok"></span></a>
                                            <% } %>
                                        </td>
                                    </tr>
                                    <% numeroOld = ped.getNumero();
                                }
                            }%>
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
