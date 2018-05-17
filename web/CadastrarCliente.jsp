<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
        <%@include file="src/header.jsp" %>
        
        <!-- INCLUI O MENU -->
        <%@include file="src/menuCliente.html" %>


	<!-- BREADCRUMB -->
	<div id="breadcrumb">
            <div class="container">
                <ul class="breadcrumb">
                    <li><a href="index.jsp">Home</a></li>
                    <li class="active">Cadastro Cliente</li>
                </ul>
            </div>
	</div>
	<!-- /BREADCRUMB -->

	<!-- section -->
        <script>
            function mensagem() {
                alert("Cadastrado com sucesso!");
            }
        </script>
	<div class="section">
            <form action="SalvarCliente" onsubmit="mensagem();">
		<!-- container -->
		<div class="container">
                    <!-- row -->
                    <div class="row">
                        <div class="col-sm-3">
                            <label>Nome</label>
                            <input type="text" class="form-control" id="nome" name="nome" value="">
                        </div>
                        <div class="col-sm-3">
                            <label>Sobrenome</label>
                            <input type="text" class="form-control" id="sobrenome" name="sobrenome" value="" >				
                        </div>
                        <div class="col-sm-2">
                            <label>CPF</label>
                            <input type="text" class="form-control" id="cpf" name="cpf" value="">
                        </div>
                        <div class="col-sm-2">
                            <label>Sexo</label><br>
                            <select name="sexo" id="sexo" class="form-control">
                                <option value="0" selected="selected">
                                </option>
                                <option value="1">
                                    Masculino
                                </option>
                                <option value="2">
                                    Feminino
                                </option>
                            </select>
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-sm-2">
                            <label>Telefone</label>
                            <input type="text" class="form-control" id="telefone" name="telefone" value="" >				
                        </div>
                        <div class="col-sm-3">
                            <label>Endereço</label>
                            <input type="text" class="form-control" id="endereco" name="endereco" value="">
                        </div>
                        <div class="col-sm-1">
                            <label>Numero</label>
                            <input type="text" class="form-control" id="numero" name="numero" value="">
                            
                        </div>
                        <div class="col-sm-2">
                            <label>CEP</label>				
                            <input type="text" class="form-control" id="cep" name="cep" value="">
                        </div>
                        <div class="col-sm-2">
                            <label>Comp.</label>
                            <input type="text" class="form-control" id="complemento" name="complemento" value="">
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-sm-3">
                            <label>Bairro</label>
                            <input type="text" class="form-control" id="bairro" name="bairro" value="">
                        </div>
                        <div class="col-sm-3">
                            <label>Cidade</label>
                            <input type="text" class="form-control" id="cidade" name="cidade" value="">
                        </div>
                        <div class="col-sm-1">
                            <label>Estado</label>
                            <select name="estado" id="estado" class="form-control">
                                <option value="0" selected="selected">
                                </option>
                                <option value="1">
                                    AC
                                </option>
                                <option value="2">
                                    AL
                                </option>
                                <option value="3">
                                   AP
                                </option>
                                <option value="4">
                                    AM
                                </option>
                                <option value="5">
                                    BA
                                </option>
                                <option value="6">
                                    CE
                                </option>
                                <option value="7">
                                    DF
                                </option>
                                <option value="8">
                                        ES
                                </option>
                                <option value="9">
                                        GO
                                </option>
                                <option value="10">
                                        MA
                                </option>
                                <option value="11">
                                        MT
                                </option>
                                <option value="12">
                                        MS
                                </option>
                                <option value="13">
                                        MG
                                </option>
                                <option value="14">
                                        PA
                                </option>
                                <option value="15">
                                        PB
                                </option>
                                <option value="16">
                                        PR
                                </option>
                                <option value="17">
                                        PE
                                </option>
                                <option value="18">
                                        PI
                                </option>
                                <option value="19">
                                        RJ
                                </option>
                                <option value="20">
                                        RN
                                </option>
                                <option value="21">
                                        RS
                                </option>
                                <option value="22">
                                        RO
                                </option>
                                <option value="23">
                                        RR
                                </option>
                                <option value="24">
                                        SC
                                </option>
                                <option value="25">
                                    SP
                                </option>
                                <option value="26">
                                        SE
                                </option>
                                <option value="27">
                                        TO
                                </option>
                            </select>
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-sm-3">
                            <label>E-mail</label>
                            <input type="text" class="form-control" id="email" name="email" value="">
                        </div>
                        <div class="col-sm-3">
                            <label>Senha</label>
                            <input type="password" class="form-control" id="senha" name="senha" value="">
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

