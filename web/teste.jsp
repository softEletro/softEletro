<%-- 
    Document   : busca
    Created on : 15/04/2018, 16:28:44
    Author     : BrendaÀ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="SalvarProduto">
            <label>Produto</label>
            <select name="produto" id="produto" class="form-control">
                <option value="0" selected="selected"></option>
                <option value="1">Celular </option>
                <option value="2">Computador </option>
            </select>
            <br>
            <label>Nome</label>
            <input type="text" class="form-control" id="nome" name="nome" value="">
            <br>
            <label>Marca</label>
            <input type="text" class="form-control" id="marca" name="marca" value="">
            <br>
            <label>Preço</label>
            <input type="text" class="form-control" id="preco" name="preco" value="">
            <br>
            <label>Quantidade</label>
            <input type="text" class="form-control" id="quantidade" name="quantidade" value="">
            <br>
            <label>Descrição</label>
            <textarea rows="5" type="text" class="form-control" id="descricao" name="descricao" value=""></textarea>         
            <br>
            <label>Imagem</label>
            <input type="text" class="form-control" id="imagem" name="imagem" value="">
            <br>
            <input class="btn btn-default" type="submit" name="btnSalvar" value="Salvar">
        </form>
    </body>
</html>