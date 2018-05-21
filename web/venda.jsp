<%-- 
    Document   : venda
    Created on : 20/05/2018, 21:05:42
    Author     : leona
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
    <body>
        <table>
            <thead>
                <th>Produto</th>
                <th>Quantidade</th>
                <th>Preco</th>
                <th>Valor total</th>
            </thead>
            <tbody>
                <% 
                for (int i=0; i<lista.size(); i++) { 
                    PedidoBean ped = (PedidoBean)lista.get(i);
                    //int valortTotal = ped.getQuantidade() * ped.getPreco(); %>
                    <tr>
                        <td><%=ped.getNomeProduto()%></td>
                        <td><%=ped.getQuantidade()%></td>
                        <td><%= ped.getPreco() %></td>
                        <td>"xxxxxxxxx"</td>
                    </tr>
                <% } %>
   </tbody>
   </table>
  </body>
    
</html>
