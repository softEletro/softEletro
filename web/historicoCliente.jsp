<%-- 
    Document   : historicoCliente
    Created on : 25/04/2018, 20:01:29
    Author     : 8247936
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

        <title>Historico de Compras</title>
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
    </head>
    
    <%@page import="com.bean.PedidoBean"%>
    <jsp:useBean id="lista" scope="request" class="java.util.List" />
    <jsp:useBean id="nome" scope="request" class="java.lang.String" />
    <jsp:useBean id="sobrenome" scope="request" class="java.lang.String" />
    <body>
        <!-- HEADER -->
        <%@include file="src/header.jsp" %>

        <!-- NAVIGATION -->

        <%@include file="src/menuCliente.html" %>
        <!-- /NAVIGATION -->

        <!-- BREADCRUMB -->
        <div id="breadcrumb">
            <div class="container">
                <ul class="breadcrumb">
                    <li><a href="index.jsp">Home</a></li>
                    <li class="active">Histórico Cliente</li>
                </ul>
            </div>
        </div>
        <!-- /BREADCRUMB -->

        <!-- section -->
        <div class="section">
            <!-- container -->
            <div class="container">
                    <!-- row -->
                    <h4><%= nome %> <%= sobrenome %></h4>
            <table class="table table-default">
                <thead>
                    <th>Numero do Pedido</th>
                    <th>Valor Total</th>
                    <th>Status</th>
                    <th></th>
                </thead>
                <tbody>
                    <% int numeroOld = 0;
                    DecimalFormat formato = new DecimalFormat("#,###.00");
                    for (int i=0; i<lista.size(); i++) { 
                        PedidoBean ped = (PedidoBean)lista.get(i);
                        Double valorTotal = ped.getQuantidade() * ped.getPreco();
                        String vlr = formato.format(valorTotal);
                        if (numeroOld != ped.getNumero()) { %>
                        <tr>
                            <td><%= ped.getNumero() %></td>
                            <td>R$ <%= vlr %></td>
                            <td><%= ped.getStatus() %></td>
                           <td>
                               <a href="MostrarPedido?numero=<%= ped.getNumero() %>"><span class="glyphicon glyphicon-list-alt"></span></a>
                           </td>
                        </tr>
                        <% numeroOld = ped.getNumero();
                        } %>
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

