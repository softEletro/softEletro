<%@page import="java.util.List"%>
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

        <jsp:useBean id="carrinho" scope="session" class="java.util.List" />

        <jsp:useBean id="nome" scope="request" class="java.util.List" />
        <jsp:useBean id="imagem" scope="request" class="java.util.List" />
        <jsp:useBean id="preco" scope="request" class="java.util.List" />
        <!-- section -->
        
        <div class="section">
            <!-- container -->
            <div class="container">
                <!-- row -->
                <div class="row">
                    <form action="FinalizarCompra">
                        <table class="table">
                            <thead>
                                <th>Id</th>
                                <th>Produto</th>
                                <th class="col-sm-1">Quantidade</th>
                                <th>Preço</th>
                            </thead>
                            <tbody>
                                <% for (int i=0;i<nome.size();i++) { %>
                                <tr>
                                    <td><input type="hidden" name="idProduto" value="<%= carrinho.get(i) %>"><%= carrinho.get(i) %></td>
                                    <td><img src="imagens/<%= imagem.get(i) %>" class="imgCarrinho"><%= nome.get(i) %></td>
                                    <td>
                                        <input class="input" type="number" name="quantidade<%= i %>" id="quantidade" min="1" max="99" value="1" />
                                    </td>
                                    <td><%= preco.get(i) %></td>
                                    <td><a href="RemoverItens?idProduto=<%= carrinho.get(i) %>"><i class="glyphicon glyphicon-remove btn btn-default" /></a></td>
                                </tr>
                                <% } %>
                                <!-- Forma de pagamento -->
                                <tr>
                                    <td colspan="2"></td>
                                    <td><strong>Forma de pagamento</strong></td>
                                    <td>
                                        <select name="formapagamento" class="form-control">
                                            <option value="" selected="selected"></option>
                                            <option value="1">Boleto</option>
                                            <option value="2">Cartão</option>
                                        </select>
                                    <td>
                                </tr>
                                <tr rowspan="2">
                                    <td colspan="2"></td>
                                    <td colspan="2"><h3>Valor total</h3></td>
                                    <td>R$ 2.098,00</td>
                                    <td></td>
                                </tr>
                            </tbody>
                        </table>
                        <br><!--pulando linhas-->
                        <br><!--pulando linhas-->
                        <center><input class="btn btn-default btn-lg" style="background-color:tomato" type="submit" name="FinalizarCompra" value="Finalizar Compra"></center>
                    
                 </form>
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