<%-- 
    Document   : showtimetable
    Created on : Apr 1, 2017, 9:29:41 AM
    Author     : Admin
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
<link rel="stylesheet" href="css/style1.css">
</head>
    <body>
      <% //Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                //Connection cn = DriverManager.getConnection("jdbc:ucanaccess:timetable");
                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                Connection cn = DriverManager.getConnection("jdbc:sqlserver://localhost;databaseName=timetable;user=timetable;password=timetable");

 Statement st = cn.createStatement();
 Statement st1 = cn.createStatement();
    ResultSet rs,rs1;
  
    String sub="";int p;
     String username=(String)session.getAttribute("user");
               out.println("welcome"+username+"<br>");
               rs1 = st1.executeQuery("select * from set1 ");
             while(rs1.next()){ 
        p=rs1.getInt(1);
        sub=rs1.getString(2);  
        if(p==1){out.println("<br>"+sub);}
        else {out.println("      "+sub);}
             }
       %>
    </body>
</html>
