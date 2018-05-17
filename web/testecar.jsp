<%-- 
    Document   : newjsp
    Created on : 14/05/2018, 14:51:31
    Author     : bcustodio
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="carrinho" scope="session" class="java.util.List" />

<jsp:useBean id="nome" scope="request" class="java.util.List" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%= carrinho %><br><br><br>
        
        <table>
            <thead>
                <th>Id</th>
                <th>Nome</th>
                <th>Sobrenome</th>
            </thead>
            <tbody>
                <tr>
                    <% for (int x=0;x<nome.size();x++) { %>
                    <td><%= carrinho.get(x) %></td>
                    <td><%= nome.get(x) %></td>
                </tr>
                <% } %>
            </tbody>
    </body>
</html>