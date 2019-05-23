<%-- 
    Document   : showtimetable
    Created on : Mar 26, 2017, 5:24:54 PM
    Author     : Admin
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>

<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
   <%
        //Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                //Connection cn = DriverManager.getConnection("jdbc:ucanaccess:timetable");
                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                Connection cn = DriverManager.getConnection("jdbc:sqlserver://localhost;databaseName=timetable;user=timetable;password=timetable");

  Statement st = cn.createStatement();
 Statement st1 = cn.createStatement();
    ResultSet rs2,rs1;
  
    String subject="",sub="";int p=0;  
    String username=(String)session.getAttribute("user");
               out.println("welcome"+"<br>"+username+"<br>");
               %><table>
    
           <table>
               <%
               rs2 = st1.executeQuery("select * from facultysubjects  where username='"+username+"'");
               while(rs2.next()){ 
        subject=rs2.getString(2);}
               out.println(subject);
               rs1 = st1.executeQuery("select * from set1  ");
             while(rs1.next()){ 
        p=rs1.getInt(1);
        sub=rs1.getString(2);
        if(p==1){
            out.println("<br>");
            if(sub.equals(subject)){
            out.println("  "+sub);}
            else { out.println("free");}
        }
        else { if(sub.equals(subject)){
            out.println("  "+sub);}
            else { out.println("free");}}
             } 
               
               
               %>
    </body>
</html>
