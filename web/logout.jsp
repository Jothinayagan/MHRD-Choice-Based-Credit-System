<%-- 
    Document   : logout
    Created on : Apr 1, 2017, 9:29:41 AM
    Author     : siva
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
         <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js/index.js"></script>.
    </head>
    <body>
        <div class="wrapper">  
        <% session.removeAttribute("user");%><a href="index.jsp">Logged out sucessfully click to login</a>
    </body>
</html>
