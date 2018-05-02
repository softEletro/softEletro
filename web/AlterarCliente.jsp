<%@page contentType="text/html" pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">

<head>



	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
	<title>SoftEletro - Cadastro Cliente</title>
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
        
        <!-- INCLUI O MENU -->
        <%@include file="/menuCliente.html" %>


	<!-- BREADCRUMB -->
	<div id="breadcrumb">
		<div class="container">
			<ul class="breadcrumb">
				<li><a href="#">Home</a></li>
				<li class="active">Cadastro Cliente</li>
			</ul>
		</div>
	</div>
	<!-- /BREADCRUMB -->

	<!-- section -->
	<div class="section">
            <jsp:useBean id="nome" scope="request" class="java.lang.String" />
            <jsp:useBean id="sobrenome" scope="request" class="java.lang.String" />
            <jsp:useBean id="sexo" scope="request" class="java.lang.String" />
            <jsp:useBean id="cpf" scope="request" class="java.lang.String" />
            <jsp:useBean id="telefone" scope="request" class="java.lang.String" />
            <jsp:useBean id="cep" scope="request" class="java.lang.String" />
            <jsp:useBean id="endereco" scope="request" class="java.lang.String" />
            <jsp:useBean id="complemento" scope="request" class="java.lang.String" />
            <jsp:useBean id="estado" scope="request" class="java.lang.String" />
            <jsp:useBean id="cidade" scope="request" class="java.lang.String" />
            <jsp:useBean id="bairro" scope="request" class="java.lang.String" />
            <jsp:useBean id="email" scope="request" class="java.lang.String" />
            <jsp:useBean id="senha" scope="request" class="java.lang.String" />
            <jsp:useBean id="numero" scope="request" class="java.lang.Integer" />
            
            <form action="AlterarCliente">
                <jsp:useBean id="id" scope="request" class="java.lang.Long" />
                <input type="hidden" id="id" name="id" value="<%= id %>" />
		<!-- container -->
		<div class="container">
                    <!-- row -->
                    <div class="row">
                        <div class="col-sm-3">
                            <label>Nome</label>
                            <input type="text" class="form-control" id="nome" name="nome" value="<%= nome %>">
                        </div>
                        <div class="col-sm-3">
                            <label>Sobrenome</label>
                            <input type="text" class="form-control" id="sobrenome" name="sobrenome" value="<%= sobrenome %>" >				
                        </div>
                        <div class="col-sm-2">
                            <label>CPF</label>
                            <input type="text" class="form-control" id="cpf" name="cpf" value="<%= cpf %>">
                        </div>
                        <div class="col-sm-2">
                            <label>Sexo</label><br>
                            <select name="sexo" id="sexo" class="form-control">
                                <option value="0" selected="selected">
                                </option>
                                <option value="1"
                                    <% if ("1".equals(sexo)) { %>
                                    selected="selected"<% } %>>
                                    Masculino
                                </option>
                                <option value="2"
                                    <% if ("2".equals(sexo)) { %>
                                    selected="selected"<% } %>>
                                    Feminino
                                </option>
                            </select>
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-sm-2">
                            <label>Telefone</label>
                            <input type="text" class="form-control" id="telefone" name="telefone" value="<%= telefone %>" >				
                        </div>
                        <div class="col-sm-3">
                            <label>Endereço</label>
                            <input type="text" class="form-control" id="endereco" name="endereco" value="<%= endereco %>">
                        </div>
                        <div class="col-sm-1">
                            <label>Numero</label>
                            <input type="text" class="form-control" id="numero" name="numero" value="<%= numero.toString() %>">
                            
                        </div>
                        <div class="col-sm-2">
                            <label>CEP</label>				
                            <input type="text" class="form-control" id="cep" name="cep" value="<%= cep %>">
                        </div>
                        <div class="col-sm-2">
                            <label>Comp.</label>
                            <input type="text" class="form-control" id="complemento" name="complemento" value="<%= complemento %>">
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-sm-3">
                            <label>Bairro</label>
                            <input type="text" class="form-control" id="bairro" name="bairro" value="<%= bairro %>">
                        </div>
                        <div class="col-sm-3">
                            <label>Cidade</label>
                            <input type="text" class="form-control" id="cidade" name="cidade" value="<%= cidade %>">
                        </div>
                        <div class="col-sm-1">
                            <label>Estado</label>
                            <select name="estado" id="estado" class="form-control">
                                <option value="0"
                                    <% if ("".equals(estado)) { %>
                                    selected="selected"
                                    <% } %>>
                                </option>
                                <option value="1"
                                    <% if ("1".equals(estado)) { %>
                                    selected="selected"<% } %>>
                                    AC
                                </option>
                                <option value="2"
                                    <% if ("2".equals(estado)) { %>
                                    selected="selected"<% } %>>
                                    AL
                                </option>
                                <option value="3"
                                    <% if ("3".equals(estado)) { %>
                                    selected="selected" <% } %>>
                                   AP
                                </option>
                                <option value="4"
                                    <% if ("4".equals(estado)) { %>
                                    selected="selected"<% } %>>
                                    AM
                                </option>
                                <option value="5"
                                    <% if ("5".equals(estado)) { %>
                                    selected="selected"<% } %>>
                                    BA
                                </option>
                                <option value="6"
                                    <% if ("6".equals(estado)) { %>
                                    selected="selected"<% } %>>
                                    CE
                                </option>
                                <option value="7"
                                    <% if ("7".equals(estado)) { %>
                                    selected="selected"<% } %>>
                                    DF
                                </option>
                                <option value="8"
                                        <% if ("8".equals(estado)) { %>
                                        selected="selected"<% } %>>
                                        ES
                                </option>
                                <option value="9"
                                        <% if ("9".equals(estado)) { %>
                                        selected="selected"<% } %>>
                                        GO
                                </option>
                                <option value="10"
                                        <% if ("10".equals(estado)) { %>
                                        selected="selected"<% } %>>
                                        MA
                                </option>
                                <option value="11"
                                        <% if ("11".equals(estado)) { %>
                                        selected="selected"<% } %>>
                                        MT
                                </option>
                                <option value="12"
                                        <% if ("12".equals(estado)) { %>
                                        selected="selected"<% } %>>
                                        MS
                                </option>
                                <option value="13"
                                        <% if ("13".equals(estado)) { %>
                                        selected="selected"<% } %>>
                                        MG
                                </option>
                                <option value="14"
                                        <% if ("14".equals(estado)) { %>
                                        selected="selected"<% } %>>
                                        PA
                                </option>
                                <option value="15"
                                        <% if ("15".equals(estado)) { %>
                                        selected="selected"<% } %>>
                                        PB
                                </option>
                                <option value="16"
                                        <% if ("17".equals(estado)) { %>
                                        selected="selected"<% } %>>
                                        PR
                                </option>
                                <option value="17"
                                        <% if ("17".equals(estado)) { %>
                                        selected="selected"<% } %>>
                                        PE
                                </option>
                                <option value="18"
                                        <% if ("18".equals(estado)) { %>
                                        selected="selected"<% } %>>
                                        PI
                                </option>
                                <option value="19"
                                        <% if ("19".equals(estado)) { %>
                                        selected="selected"<% } %>>
                                        RJ
                                </option>
                                <option value="20"
                                        <% if ("20".equals(estado)) { %>
                                        selected="selected"<% } %>>
                                        RN
                                </option>
                                <option value="21"
                                        <% if ("21".equals(estado)) { %>
                                        selected="selected"<% } %>>
                                        RS
                                </option>
                                <option value="22"
                                        <% if ("22".equals(estado)) { %>
                                        selected="selected"<% } %>>
                                        RO
                                </option>
                                <option value="23"
                                        <% if ("23".equals(estado)) { %>
                                        selected="selected"<% } %>>
                                        RR
                                </option>
                                <option value="24"
                                        <% if ("24".equals(estado)) { %>
                                        selected="selected"<% } %>>
                                        SC
                                </option>
                                <option value="25"
                                    <% if ("25".equals(estado)) { %>
                                    selected="selected"<% } %>>
                                    SP
                                </option>
                                <option value="26"
                                        <% if ("26".equals(estado)) { %>
                                        selected="selected"<% } %>>
                                        SE
                                </option>
                                <option value="27"
                                        <% if ("27".equals(estado)) { %>
                                        selected="selected"<% } %>>
                                        TO
                                </option>
                            </select>
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-sm-3">
                            <label>E-mail</label>
                            <input type="text" class="form-control" id="email" name="email" value="<%= email %>">
                        </div>
                        <div class="col-sm-3">
                            <label>Senha</label>
                            <input type="password" class="form-control" id="senha" name="senha" value="<%= senha %>">
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

