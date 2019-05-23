<%-- 
    Document   : studentsubject
    Created on : Apr 1, 2017, 10:09:41 AM
    Author     : Admin
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
              String username=(String)session.getAttribute("user");
            //String username=(String)session.getAttribute("user");
//String  facultyname = request.getParameterValues("subjects");            
String facultyname=request.getParameter("facultyname");
String subjectname=request.getParameter("subjectname");
         //Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                //Connection cn = DriverManager.getConnection("jdbc:ucanaccess:timetable");
                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                Connection cn = DriverManager.getConnection("jdbc:sqlserver://localhost;databaseName=timetable;user=timetable;password=timetable");

 Statement st = cn.createStatement();
   Statement st1 = cn.createStatement();  
 ResultSet rs;int r=0;
    r = st1.executeUpdate("insert into studentselected values ('"+username+"','"+facultyname+"','"+subjectname+"') ");
         
     
        
   if(r>0){
    out.println("inserted sucessfully");
    }
   
        %>
        <a href="../logout.jsp">Logout</a>
    </body>
</html>
