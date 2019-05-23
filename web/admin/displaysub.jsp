<%-- 
    Document   : showsubject
    Created on : Mar 15, 2017, 11:44:06 AM
    Author     : Admin
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
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
        //Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                //Connection cn = DriverManager.getConnection("jdbc:ucanaccess:timetable");
                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                Connection cn = DriverManager.getConnection("jdbc:sqlserver://localhost;databaseName=timetable;user=timetable;password=timetable");

 Statement st = cn.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from adminsubjects ");
    String sub="";
     String username=(String)session.getAttribute("user");
               out.println("welcome"+"<br>"+username+"<br>");
               %><table>
                   
               
                      
                       <option></option>
                   </select>
                   
       <form method="post" action="insertsubject1.jsp">
           <tr><td> Select subject:    <select name="subject">
        <%while(rs.next()){ 
        sub=rs.getString(1);
        %>
     < <option value="<%=sub%>"><%=sub%></option> 
                        <%}%> 
                        </td></tr>
        </select><br><br><br><br>
        <tr><td > <input type="submit" value="submit" /></td></tr></table>
       </form>
    </body>
</html>
