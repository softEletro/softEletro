<%-- 
    Document   : carrinhoteste
    Created on : 20/05/2018, 16:06:08
    Author     : Arthur
--%>

<%@page import="javax.swing.text.MaskFormatter"%>
<%@page import="java.text.NumberFormat"%>
<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <link href="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.10/jquery.mask.min.js" rel="stylesheet">
    </head>
    <body>
        <script>
            function mascara(t, mask){
                var i = t.value.length;
                var saida = mask.substring(1,0);
                var texto = mask.substring(i)
                if (texto.substring(0,1) != saida){
                    t.value += texto.substring(0,1);
                }
            }
        </script>
        <input type="text" name="cep" onkeypress="mascara(this, '#####-###')" maxlength="9">
        <input type="text" name="cpf" onkeypress="mascara(this, '000.000.000-00')" maxlength="14">
        <input type="text" name="cep" onkeypress="mascara(this, '#####-###')" maxlength="9">
        
    </body>
</html>
