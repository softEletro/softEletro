<%-- 
    Document   : teste
    Created on : 10/05/2018, 15:43:46
    Author     : bcustodio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="logado" scope="session" class="java.lang.String" />
<jsp:useBean id="retorno" scope="session" class="java.lang.String" />
<jsp:useBean id="Usuario" scope="session" class="java.lang.String" />

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
    <% if(retorno.equals("NotFound")){%>
        <script type="text/javascript">        
            alert("E-mail ou Senha Incorretos !");        
        </script>
    <%; session.setAttribute("retorno", null);}%>
    
    <% if(retorno.equals("Preenchimento")){%>
        <script type="text/javascript">        
            alert("Preencha Todos os Campos !");        
        </script>
    <%; session.setAttribute("retorno", null);}%>
    
    <script type="text/javascript">

function Total_compra() {

    var i = "1";
    var tot = null;
    var totalCompra = 0;
    
    while (document.getElementById('item' + i).value.length > 0) {

        //alert("Posicao " + i);
        //alert(document.getElementById('item' + i).value);
        var qtd = [document.getElementById('quantidade' + i).value];
        //alert("Quantidade " + qtd);        
        var val = [document.getElementById('valor' + i).innerHTML];        
        //alert("Valor " + val);

        if (i == 1) {
          //alert("OPCAO 1: " + qtd[0] * val[0]);
          tot = [qtd[i-1] * val[i-1]];
        } else {
          //alert("OPCAO 2: " + qtd[0] * val[0]);
          tot.push(qtd[0] * val[0]);
        }

          //alert("OPCAO 3: " + tot[i-1]);
          totalCompra = totalCompra + tot[i-1];
          //alert(totalCompra);
          
          if (totalCompra == ""){
              document.getElementById('totalCompra').innerHTML = "0,00";
          } else {
              document.getElementById('totalCompra').innerHTML = totalCompra;
          }

        i++;
    }
}
  </script>  
        
  <!-- top Header -->
  <div id="top-header">
    <div class="container">
      <div class="pull-left">
        <span><%=Usuario%></span>
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
            <form action="BuscarProdutoCli">
                <input class="input search-input" type="text" name="nome" placeholder="Procure o Produto...">
                <select class="input search-categories" name="categoria" id="categoria">
                  <option value="2">Computador</option>
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
              <% if (logado.equals("Login")) { %>
                <jsp:useBean id="idUsuario" scope="session" class="java.lang.Integer" />
                <li><a href="ListaPedido?idCliente=<%= idUsuario %>"><i class="glyphicon glyphicon-th-list"></i> Lista de Pedidos</a></li>
                <li><a href="MostrarCliente?id=<%= idUsuario %>"><i class="glyphicon glyphicon-user"></i> Editar Perfil</a></li>
                <% if (idUsuario.toString().equals("999")){ %> <!-- Acrescenta uma opção para o Administrador do Sistema voltar ao Sistema -->
                    <li><a href="indexAdm.jsp"><i class="glyphicon glyphicon-tasks"></i> Sistema</a></li>
                <% } %>
              <% } %>
              <li><a href="Logout"><i class="glyphicon glyphicon-log-out"></i> Sair</a></li>
            </ul>
          </li>
          <!-- /Minha conta -->
          <!-- Entrar -->          
          <li class="header-account dropdown default-dropdown" id="entrarConta" style="display: none">
            <div class="dropdown-toggle" role="button" data-toggle="dropdown" aria-expanded="true">                              
                <strong class="text-uppercase">Entrar</strong>
            </div>
            
            
            <ul class="custom-menu">                
                <form action="Login" method="POST">
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
                <a href="MostrarCarrinho"><i class="fa fa-shopping-cart"></i></a>
              </div>                
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

