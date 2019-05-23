<%-- 
    Document   : insertsubjects
    Created on : Mar 15, 2017, 12:49:26 PM
    Author     : Admin
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
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
            //String username=(String)session.getAttribute("user");
String [] number = request.getParameterValues("subjects");            
String subname=request.getParameter("subjectname");
         //Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                //Connection cn = DriverManager.getConnection("jdbc:ucanaccess:timetable");
                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                Connection cn = DriverManager.getConnection("jdbc:sqlserver://localhost;databaseName=timetable;user=timetable;password=timetable");

   Statement st = cn.createStatement();  
 ResultSet rs;int r=0;
    for(int j=0;j<number.length;j++)   
      {r = st.executeUpdate("insert into faculty_subjects values ('"+number[j]+"','"+subname+"') ");
         }
     
        
   if(r>0){
    out.println("inserted sucessfully");
    }
   
   
        %>
        <a href="../logout.jsp">Logout</a>
    </body>
</html>
