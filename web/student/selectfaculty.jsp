<%-- 
    Document   : selectfaculty
    Created on : Apr 1, 2017, 11:29:41 AM
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
 String subname=request.getParameter("subjectname");
    ResultSet rs;
    rs = st.executeQuery("select * from faculty_subjects where subject_name='"+subname+"'  ");
    String sub="";
     String username=(String)session.getAttribute("user");
               out.println("welcome"+"<br>"+username+"<br>");
               %><table>
       <form method="post" action="studentsubject.jsp">
           <tr><td> Select subject:</td></tr>
        <%while(rs.next()){ 
        sub=rs.getString(1);
        %>
        <tr><td> <input type="hidden" value="<%=subname%>" name="subjectname"> <input type="radio" value="<%=sub%>" name="facultyname"><%=sub%></td></tr>
                        <%}%>           
        </select><br><br><br><br>
        <tr><td > <input type="submit" value="submit" /></td></tr></table>
       </form>
    </body>
</html>
