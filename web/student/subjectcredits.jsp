<%-- 
    Document   : subjectcredits
    Created on : Apr 1, 2017, 10:49:41 AM
    Author     : siva
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

        <script src="js/index.js"></script>.

    </head>
    <body>
        <div class="wrapper">  
            <%
                String username = (String) session.getAttribute("user");
                //String subname=request.getParameter("subjects");
                //Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                //Connection cn = DriverManager.getConnection("jdbc:ucanaccess:timetable");
                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                Connection cn = DriverManager.getConnection("jdbc:sqlserver://localhost;databaseName=timetable;user=timetable;password=timetable");

                Statement st = cn.createStatement();
                Statement st1 = cn.createStatement();
                ResultSet rs;
                int credits = 0;
                int c = 0;
                String[] number = request.getParameterValues("subject");

                out.println("<table cellpadding=10>");
                for (int j = 0; j < number.length; j++) {

                    rs = st.executeQuery("select * from compulsary_subjects  where name='" + number[j] + "'");
                    while (rs.next()) {
                        c = rs.getInt(2);
                        credits += c;
                        out.println("<tr><td>" + number[j] + "</td><td> " + c + "</td></tr>");

                        int r = st1.executeUpdate("insert into student_subjects values ('" + username + "','" + number[j] + "') ");

                    }
                }
                Statement st2 = cn.createStatement();
                Statement st3 = cn.createStatement();
                ResultSet rs1;
                int credits1 = 0;

                String[] number1 = request.getParameterValues("subjects1");

                out.println("<table cellpadding=10>");
                for (int j = 0; j < number1.length; j++) {
                    rs = st.executeQuery("select * from subjects  where name like '" + number1[j] + "'");
                    while (rs.next()) {
                        c = rs.getInt(2);
                        credits1 += c;
                        out.println("<tr><td>" + number1[j] + "</td><td> " + c + "</td></tr>");

                        int r = st1.executeUpdate("insert into student_subjects values ('" + username + "','" + number1[j] + "') ");

                    }
                }
                String[] number2 = request.getParameterValues("subjects");

                out.println("<table cellpadding=10>");
                for (int j = 0; j < number2.length; j++) {
                    rs = st.executeQuery("select * from open_elective  where name like '" + number2[j] + "'");
                    while (rs.next()) {
                        c = rs.getInt(2);
                        credits1 += c;
                        out.println("<tr><td>" + number2[j] + "</td><td> " + c + "</td></tr>");

                        int r = st1.executeUpdate("insert into student_subjects values ('" + username + "','" + number2[j] + "') ");

                    }
                }
                

                int cre = credits + credits1;


            %>
            <tr><td> total credits</td><td> <%=cre%></td></tr>
            <tr><td colspan="2"> Registered Sucessfully</td></tr>
        </table>
        <a href="../logout.jsp">Logout</a>
</body>
</html>
