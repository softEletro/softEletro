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
    </head>

    <body>
        <jsp:useBean id="idUsuario" scope="session" class="java.lang.Integer" />
        <% if (idUsuario == 999) {%>
            <!-- HEADER -->
            <%@include file="src/headerAdm.html" %>
            <!-- /HEADER -->

            <!-- INCLUI O MENU -->
            <%@include file="src/menu.html" %>

            <!-- BREADCRUMB -->
            <div id="breadcrumb">
                <div class="container">
                    <ul class="breadcrumb">
                        <li><a href="indexAdm.jsp">Home</a></li>
                        <li class="active">Cadastro Produto</li>
                    </ul>
                </div>
            </div>
            <!-- /BREADCRUMB -->

            <!-- section -->
            <div class="section">
                <jsp:useBean id="nome" scope="request" class="java.lang.String" />
                <jsp:useBean id="produto" scope="request" class="java.lang.String" />
                <jsp:useBean id="marca" scope="request" class="java.lang.String" />
                <jsp:useBean id="descricao" scope="request" class="java.lang.String" />
                <jsp:useBean id="imagem" scope="request" class="java.lang.String" />
                <jsp:useBean id="imagem2" scope="request" class="java.lang.String" />
                <jsp:useBean id="quantidade" scope="request" class="java.lang.Integer" />
                <jsp:useBean id="preco" scope="request" class="java.lang.Double" />
                <jsp:useBean id="id" scope="request" class="java.lang.Integer" />

                <script>
                    function mensagem() {
                        alert("Produto alterado com sucesso!");
                    }
                </script>

                <form action="AlterarProduto" onsubmit="mensagem();">
                    <input type="hidden" id="id" name="id" value="<%= id %>" />
                    <!-- container -->
                    <div class="container">
                        <!-- row -->
                        <div class="row">
                            <div class="col-sm-2">
                                <label>Produto</label>
                                <select name="produto" id="produto" class="form-control">
                                    <option value="0"
                                        <% if ("".equals(produto)) { %>
                                                selected="selected"<% } %>>

                                    </option>
                                    <option value="1"
                                        <% if ("1".equals(produto)) { %>
                                                selected="selected"<% } %>>
                                                Celular
                                    </option>
                                    <option value="2"
                                        <% if ("2".equals(produto)) { %>
                                            selected="selected"<% } %>>
                                            Computador
                                    </option>
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
                                <input type="text" class="form-control" id="marca" name="marca" value="<%=marca%>">
                            </div>
                            <div class="col-sm-2">
                                <label>Pre�o</label>
                                <input type="text" class="form-control" id="preco" name="preco" value="<%=preco%>">
                            </div>
                            <div class="col-sm-2">
                                <label>Quantidade</label>
                                <input type="text" class="form-control" id="quantidade" name="quantidade" value="<%=quantidade%>">
                            </div>
                        </div><br>
                        <div class="row">
                            <div class="col-sm-6">
                                <label>Descri��o</label>
                                <textarea rows="10" type="text" class="form-control" id="descricao" name="descricao" value=""><%=descricao%></textarea>
                            </div>
                            <div class="col-sm-4">
                                <label>Imagem</label>
                                <input type="text" class="form-control" id="imagem" name="imagem" value="<%= imagem %>">
                            </div>
                            <div class="col-sm-4">
                                <label>Imagem 2</label>
                                <input type="text" class="form-control" id="imagem2" name="imagem2" value="<%= imagem2 %>">
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
            <%@include file="src/footer.html" %>
            <!-- /FOOTER -->

            <!-- jQuery Plugins -->
            <script src="js/jquery.min.js"></script>
            <script src="js/bootstrap.min.js"></script>
            <script src="js/slick.min.js"></script>
            <script src="js/nouislider.min.js"></script>
            <script src="js/jquery.zoom.min.js"></script>
            <script src="js/main.js"></script>
        <% } else { %><h2>Voc� n�o tem acesso!</h2><% } %>
    </body>

</html>
