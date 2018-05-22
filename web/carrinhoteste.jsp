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
        <% float p = 5.0F;
            for (int qtd=1; qtd<=3; qtd++) {
            float valor = qtd*p;
            
            if (qtd == 3) {
                out.print(valor);
            }
        }
        %>
    </body>
</html>
