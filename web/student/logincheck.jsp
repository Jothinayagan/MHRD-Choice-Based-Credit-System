<%-- 
    Document   : logincheck
    Created on : Apr 1, 2017, 9:29:41 AM
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
        <link rel="stylesheet" href="css/style.css">
        <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

        <script src="js/index.js"></script>.

    </head>
    <body>
        <div class="wrapper">    

            <%
                String user = request.getParameter("uname");
                String pass = request.getParameter("upass");
                String username = user.toLowerCase().trim();
                String password = pass.toLowerCase().trim();
                //out.println(username+""+password);
                //Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                //Connection cn = DriverManager.getConnection("jdbc:ucanaccess:timetable");
                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                Connection cn = DriverManager.getConnection("jdbc:sqlserver://localhost;databaseName=timetable;user=timetable;password=timetable");

                Statement st = cn.createStatement();
                ResultSet rs;
                rs = st.executeQuery("select * from student_login where (username='" + username + "' and pass='" + password + "')");
                if (rs.next()) {
                    session.setAttribute("user", username);
                    session.setAttribute("dept", rs.getString(3));
                    response.sendRedirect("it.jsp");
                } else {
                    out.println("Invalid password <a href='index.jsp'>try again</a>");
                }
            %>
    </body>
</html>
