<%-- 
    Document   : teste
    Created on : 10/05/2018, 15:43:46
    Author     : bcustodio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="logado" scope="session" class="java.lang.String" />
<header>
    
    <script type="text/javascript">  
        // Switch para mudar entre Minha Conta e Entrar
    window.onload = function MudarOpcao() {        
        var display = "<%= logado %>"; // Variavel que virá do login
        if(display === "Login"){
            document.getElementById("minhaConta").style.display = 'inline-block';
            document.getElementById("entrarConta").style.display = 'none';
        } else {
            document.getElementById("minhaConta").style.display = 'none';
            document.getElementById("entrarConta").style.display = 'inline-block';
          }
      }
    </script>
    
    <script type="text/javascript">
        function removeItem(div){
            document.getElementById(div).remove();
        }       
    </script>
    
  <!-- top Header -->
  <div id="top-header">
    <div class="container">
      <div class="pull-left">
        <span>Bem Vindo!</span>
      </div>
    </div>
  </div>
  <!-- /top Header -->
  <!-- header -->
  <div id="header">
    <div class="container">
      <div class="pull-left">
        <!-- Logo -->
        <div class="header-logo">
          <a class="logo" href="index.jsp">
          <img src="./img/logo.png" class="imgLogo" alt="">
          </a>
        </div>
        <!-- /Logo -->
        <!-- Search -->
        <div class="header-search">
          <form>
            <input class="input search-input" type="text" placeholder="Procure o Produto...">
            <select class="input search-categories">              
              <option value="0">Computador</option>
              <option value="1">Celular</option>
            </select>
            <button class="search-btn"><i class="fa fa-search"></i></button>
          </form>
        </div>
        <!-- /Search -->
      </div>
      <div class="pull-right">
        <ul class="header-btns">
          <!--Minha conta -->
          <li class="header-account dropdown default-dropdown" id="minhaConta" style="display: none">
            <div class="dropdown-toggle" role="button" data-toggle="dropdown" aria-expanded="true">
              <div class="header-btns-icon">
                <i class="fa fa-user-o"></i>
              </div>
              <strong class="text-uppercase">Minha Conta <i class="fa fa-caret-down"></i></strong>
              
            </div>
            
            <ul class="custom-menu">
              <li><a href="#"><i class="fa fa-user-o"></i> Minha Conta</a></li>
              <li><a href="#"><i class="fa fa-check"></i> Lista de Pedidos</a></li>
              <li><a href="#"><i class="fa fa-exchange"></i> Editar Perfil</a></li>
              <li><a href="Logout"><i class="fa fa-exchange"></i> Sair</a></li>
            </ul>
          </li>
          <!-- /Minha conta -->
          <!-- Entrar -->          
          <li class="header-account dropdown default-dropdown" id="entrarConta" style="display: none">
            <div class="dropdown-toggle" role="button" data-toggle="dropdown" aria-expanded="true">                              
                <strong class="text-uppercase">Entrar</strong>
            </div>
            
            
            <ul class="custom-menu">                
                <form action="Login">
                <li>E-mail: <input type="text" class="form-control" name="email"></li>
                <li>Senha: <input type="password" class="form-control" name="senha"></li>
                <li><input class="btn btn-default" type="submit" name="entrar" value="Entrar"></li>
                </form>
                <li>Nao tem Cadastro ?<a href="CadastrarCliente.jsp"><i class="fa fa-user-o"></i> Cadastrar</a></li>                
            </ul>
                
          </li>
          
          <!-- /Entrar -->
          <!-- Cart -->
          <li class="header-cart dropdown default-dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
              <div class="header-btns-icon">
                <i class="fa fa-shopping-cart"></i>
                <span class="qty">3</span> <!-- Qtd de Itens no Carrinho -->
              </div>
              <strong class="text-uppercase">Carrinho:</strong>
              <br>
              <span>R$</span>
            </a>            
          </li>
          <!-- /Cart -->
          <!-- Mobile nav toggle-->
          <li class="nav-toggle">
            <button class="nav-toggle-btn main-btn icon-btn"><i class="fa fa-bars"></i></button>
          </li>
          <!-- / Mobile nav toggle -->
        </ul>
      </div>
    </div>
    <!-- header -->
  </div>
  <!-- container -->
</header>

