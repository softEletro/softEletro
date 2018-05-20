<%-- 
    Document   : carrinhoteste
    Created on : 20/05/2018, 16:06:08
    Author     : Arthur
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="idUsuario" scope="session" class="java.lang.Integer" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="FinalizarCompra">
            <input type="text" name="idProduto" value="4">
            <input type="text" name="idCliente" value="<%= idUsuario %>">
            <input type="text" name="quantidade" value="10">
            <input type="text" name="preco" value="10"><br><br>
            
            <input type="submit" name="FinalizarCompra">
        </form>
    </body>
</html>
