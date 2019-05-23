<%-- 
    Document   : faculty
    Created on : Feb 25, 2017, 8:15:41 PM
    Author     : siva
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <link rel="stylesheet" href="css/style.css">
 <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js/index.js"></script>.
        <title>Student Login</title>
         <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js/index.js"></script>.
    </head>
    <style>
        .wrapper {
    text-align: center;
}
.button {
    position: absolute;
    top: 75%;
    
}
</style>

    <body>
        <div class="wrapper">    
                <ul class="bg-bubbles">
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
	</ul>
    

            <form action="logincheck.jsp" method="POST">
            
            <input type="text" name="uname" value="" placeholder="Username"/>
            <input type="password" name="upass" value="" placeholder="Password"/>
            <input type="submit" value="submit" />
           
    
        </div>

    </form>
            
    </body>
</html>
