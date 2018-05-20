<%-- 
    Document   : historico
    Created on : 20/05/2018, 20:14:22
    Author     : Arthur
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%@page import="com.bean.PedidoBean"%>
    <jsp:useBean id="lista" scope="request" class="java.util.List" />
    <jsp:useBean id="nome" scope="request" class="java.lang.String" />
    <jsp:useBean id="sobrenome" scope="request" class="java.lang.String" />
    <body>
        <table>
            <thead>
                <th>Nome</th>
                <th>Valor total</th>
                <th>Status</th>
                <th></th>
            </thead>
            <tbody>
                <% String numeroOld = "";
                for (int i=0; i<lista.size(); i++) { 
                    PedidoBean ped = (PedidoBean)lista.get(i);
                    //int valortTotal = ped.getQuantidade() * ped.getPreco();
                    if (!numeroOld.equals(ped.getNumero())) { %>
                    <tr>
                        <td><%= nome %> <%= sobrenome %></td>
                        <td></td>
                        <td><%= ped.getStatus() %></td>
                        <td><a href="MostraPedido?numero=<%= ped.getNumero() %>">Mostrar pedido</a></td>
                    </tr>
                    <% numeroOld = ped.getNumero();
                    } %>
                <% } %>
            </tbody>
        </table>
    </body>
</html>
