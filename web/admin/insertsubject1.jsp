<%-- 
    Document   : showsubjects
    Created on : Feb 25, 2017, 9:27:25 PM
    Author     : siva
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
                 String sub="";
            String username=(String)session.getAttribute("user");
//String [] number = request.getParameterValues("subjects");            
String subname=request.getParameter("subject");
          //Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                //Connection cn = DriverManager.getConnection("jdbc:ucanaccess:timetable");
                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                Connection cn = DriverManager.getConnection("jdbc:sqlserver://localhost;databaseName=timetable;user=timetable;password=timetable");

 Statement st = cn.createStatement();
   Statement st1 = cn.createStatement();  
 ResultSet rs;int r=0;
     rs = st.executeQuery("select * from faculty_subjects where subject_name='"+subname+"' ");
     
        
  
   
        %>
        <form action="insertsubjects.jsp" method="post">
        <table><tr><td><%=subname%></td></tr>
        <%while(rs.next()){ 
        sub=rs.getString(1);
        %>
        <tr><td> <input type="hidden" value="<%=subname%>" name="subjectname"><input type="checkbox" value="<%=sub%>" name="subjects"><%=sub%></td></tr>
                        <%}%>  
         <tr><td><input type="submit" value="Submit" /></td></tr>
        </form>
        <a href="../logout.jsp">Logout</a>
                </div>    </body>
</html>
