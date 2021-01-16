<%-- 
    Document   : retencion
    Created on : 15-ene-2021, 21:38:54
    Author     : David
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>RETENCION</title>
    </head>
    <body>
         <% float sueldo= Float.parseFloat(request.getParameter("sueldo"));
            String nombre = request.getParameter("nombre");
            float salarioNeto=0;
           %>
           <% if ((sueldo>1000) && (sueldo<=3000)){%>
            <h2 >Tiene una retencion del 10%</h2>
            <% salarioNeto= (sueldo*10)/100; %>
            <% }else if(sueldo>3000){ %>
            <h2 >Tiene una retencion del 20%</h2>
            <% salarioNeto= (sueldo*20)/100; %>
            <% }else{ %>
            <h2>No tienes ninguna retencion</h2>
            <% salarioNeto= sueldo; %>
            <% } %>
        
            <p>Nombre del empleado: <%= nombre %></p>
            <p>Salario bruto: <%= sueldo %></p>
            <p>Salario Neto <%= salarioNeto %></p>
    </body>
</html>
