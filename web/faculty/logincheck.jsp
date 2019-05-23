<%-- 
    Document   : logincheck
    Created on : Feb 25, 2017, 8:33:12 PM
    Author     : siva
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
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
            String user = request.getParameter("uname");
            String pass = request.getParameter("upass");
  String username=user.toLowerCase().trim();
   String password=pass.toLowerCase().trim();
   //out.println(username+""+password);
      //Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                //Connection cn = DriverManager.getConnection("jdbc:ucanaccess:timetable");
                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                Connection cn = DriverManager.getConnection("jdbc:sqlserver://localhost;databaseName=timetable;user=timetable;password=timetable");

 Statement st = cn.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from faculty_login where (username='" + username + "' and pass='" + password + "') and (dept='it')");
    if (rs.next()) {
        session.setAttribute("user", username);
            
      response.sendRedirect("it.jsp");
    }
    Statement st1 = cn.createStatement();
    ResultSet rs1;
    rs1 = st1.executeQuery("select * from faculty_login where (username='" + username + "' and pass='" + password + "') and (dept='ece')");
    if (rs1.next()) {
        session.setAttribute("user", username);
            
      response.sendRedirect("ece.jsp");
    }
    Statement st2 = cn.createStatement();
    ResultSet rs2;
    rs2 = st.executeQuery("select * from faculty_login where (username='" + username + "' and pass='" + password + "') and (dept='mech')");
    if (rs2.next()) {
        session.setAttribute("user", username);
            
      response.sendRedirect("mech.jsp");
    }else {
        out.println("Invalid password <a href='index.jsp'>try again</a>");
    }
    %>
    </body>
</html>
