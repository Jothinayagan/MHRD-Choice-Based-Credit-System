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
        
        <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

        <script src="js/index.js"></script>.
          <style>
            .btn:hover {
                background: #3cb0fd;
                background-image: -webkit-linear-gradient(top, #3cb0fd, #3498db);
                background-image: -moz-linear-gradient(top, #3cb0fd, #3498db);
                background-image: -ms-linear-gradient(top, #3cb0fd, #3498db);
                background-image: -o-linear-gradient(top, #3cb0fd, #3498db);
                background-image: linear-gradient(to bottom, #3cb0fd, #3498db);
                text-decoration: none;
            }
            body{
                background-color: #ffaaaa;
            }

        </style> 

    </head>
    <body align="center">
        <div class="wrapper">

            <%
                //Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                //Connection cn = DriverManager.getConnection("jdbc:ucanaccess:timetable");
                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                Connection cn = DriverManager.getConnection("jdbc:sqlserver://localhost;databaseName=timetable;user=timetable;password=timetable");

                Statement st = cn.createStatement();
                Statement st1 = cn.createStatement();
                ResultSet rs, rs1;

                String sub = "";
                String username = (String) session.getAttribute("user");
                out.println("welcome" + "<br>" + username + "<br>");
            %><a href="showtimetable.jsp">Show timetable</a><table>
                <form method="post" action="insertsubjects.jsp">
                    <table>
                        <h2>IT Department</h2>
                        <%
                            rs1 = st1.executeQuery("select * from compulsary_subjects where dept='it' ");
                        %>
                        <tr><td>Compulsary Subjects</td></tr>
                        <%while (rs1.next()) {
                                sub = rs1.getString(1);
                        %>
                        <tr><td> <input type="checkbox"  value="<%=sub%>" name="subject"><%=sub%></td></tr>
                                <%}%>
                        <tr><td>
                                Select Elective subject:</td></tr>
                                <%  rs = st.executeQuery("select * from subjects where dept='it' ");
                                    while (rs.next()) {
                                        sub = rs.getString(1);
                                %>
                        <tr><td> <input type="checkbox" value="<%=sub%>" name="subjects"><%=sub%></td></tr>
                                <%}%>       
                        <tr><td>
                                Select Open Elective subject:</td></tr>
                                <%  rs = st.executeQuery("select * from open_elective where dept='it'");
                                    while (rs.next()) {
                                        sub = rs.getString(1);
                                %>
                        <tr><td> <input type="checkbox" value="<%=sub%>" name="subject1"><%=sub%></td></tr>
                                <%}%> 

                        <tr><td>   <input type="submit" value="Next" /></td></tr></table>


                </form>
        </div>
    </body>
</html>
