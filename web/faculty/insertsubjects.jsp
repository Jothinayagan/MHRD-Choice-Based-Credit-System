<%-- 
    Document   : insertsubjects
    Created on : Feb 25, 2017, 9:40:35 PM
    Author     : siva
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
                <div class="wrapper">
                       
    
    
        <%
            String username=(String)session.getAttribute("user");
String [] number = request.getParameterValues("subject");            
//String subname=request.getParameter("subjects");
          //Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                //Connection cn = DriverManager.getConnection("jdbc:ucanaccess:timetable");
                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                Connection cn = DriverManager.getConnection("jdbc:sqlserver://localhost;databaseName=timetable;user=timetable;password=timetable");

 Statement st = cn.createStatement();
   Statement st1 = cn.createStatement();  
 ResultSet rs;int r=0;
  for(int j=0;j<number.length;j++)   
      {
           
   
          
           r = st1.executeUpdate("insert into faculty_subjects values ('"+username+"','"+number[j]+"') ");
          
         }
     Statement st2 = cn.createStatement();
  Statement st3 = cn.createStatement();  
    ResultSet rs1;int credits1=0; int c1=0;
    String [] number1 = request.getParameterValues("subjects");
 int r1=0;
 /* for(int i=0;i<number1.length;i++)   
      {
         
    
          
            r1 = st3.executeUpdate("insert into faculty_subjects values ('"+username+"','"+number1[i]+"') ");
          
         } */     
        
   if(r>0 ){
    out.println("inserted sucessfully");
    }
   
        %>
        <a href="../logout.jsp">Logout</a>
                </div>
    </body>
</html>
