
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.bean.ProdutoBean"%>
<jsp:useBean id="lista" scope="request" class="java.util.List" />
<!DOCTYPE html>
<html lang="en">
       <jsp:useBean id="nome" scope="request" class="java.lang.String" />
      <jsp:useBean id="nomeProduto" scope="request" class="java.lang.String" />
      <jsp:useBean id="imagem" scope="request" class="java.lang.String" />
     <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

        <title><%= nome %></title>
        <link rel="sortcut icon" href="img/logotitulo.png" type="image/x-icon" />

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

        <!-- INCLUI O MENU -->
        <%@include file="src/menuCliente.html" %>

        <!-- BREADCRUMB -->
        <div id="breadcrumb">
            <div class="container">
                <ul class="breadcrumb">
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="products.html">Produtos</a></li>
                    <li class="active"><%= nome %></li>
                </ul>
            </div>
        </div>     
                <form action="ListaProduto">
                 <% for (int i=0;i<lista.size();i++) {
                                ProdutoBean Pro = (ProdutoBean)lista.get(i); %>              
                                <div class="col-md-4 col-sm-6 col-xs-6">
                                <div class="product product-single">
                                <button class="main-btn quick-view"><i class="fa fa-search-plus"><a href="DetalhesProduto.jsp"></a></i> Detalhes</button>
                                <img src="<%= Pro.getImagem() %>" alt="">
                                <div class="product-body">                                              
                            <h2 class="product-name"><%= Pro.getNome()%></h2>
                        </div>
			</div>
			</div>
                        </form>
                </form>
                  <form action="AdicionarItens">
                    <div class="product-btns">
                    <button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i> Adicionar ao Carrinho</button>
                    </div>
                    </form>                                                                  
    </body>
</html>
