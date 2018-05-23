<%-- 
    Document   : carrinhoteste
    Created on : 20/05/2018, 16:06:08
    Author     : Arthur
--%>

<%@page import="java.text.NumberFormat"%>
<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% DecimalFormat formato = new DecimalFormat("#,###.00");
            Double p = 1055.0;
            for (int qtd=1; qtd<=3; qtd++) {
            Double valor = qtd*p;
            
            if (qtd == 3) {
                //String vlr = Double.toString(valor);
                //vlr = NumberFormat.getCurrencyInstance().format(vlr);
                String vlr = formato.format(valor);
                out.print(vlr);
            }
        }
            
        %>
        
    </body>
</html>
