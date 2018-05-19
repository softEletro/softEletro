<%-- 
    Document   : newjsp
    Created on : 17/05/2018, 16:13:50
    Author     : bcustodio
--%>
<%@page import="com.bean.ProdutoBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="nomeProduto" scope="request" class="java.lang.String" />
       <jsp:useBean id="quantidade" scope="request" class="java.lang.String" />
    
        <h1>Hello World!</h1>
       <%=nomeProduto%>
       <%=quantidade%>
       
            </body>
</html>
