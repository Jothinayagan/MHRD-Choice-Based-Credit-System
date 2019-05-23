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
        <style >
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
    <body>
             
        <Script>
            function toggleSelection(x) {
                var b = document.getElementById(x);
                if(b.checked){
                    document.getElementById("s2"+x.toString().substring(2)).disabled=true;
                    document.getElementById("s2"+x.toString().substring(2)).checked=false;
                }
                else
                {
                    document.getElementById("s2"+x.toString().substring(2)).disabled=false;
                }
            }
        </script>

        <Script>
            function toggleSelection1(x) {
                var b = document.getElementById(x);
                if(b.checked){
                    document.getElementById("s1"+x.toString().substring(2)).disabled=true;
                    document.getElementById("s1"+x.toString().substring(2)).checked=false;
                }
                else
                {
                    document.getElementById("s1"+x.toString().substring(2)).disabled=false;
                }

            }
        </script>





        <%Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection cn = DriverManager.getConnection("jdbc:sqlserver://localhost;databaseName=timetable;user=timetable;password=timetable");

            Statement st = cn.createStatement();
            Statement st1 = cn.createStatement();
            ResultSet rs, rs1, rs2;

            String sub = "";
            String username = (String) session.getAttribute("user");
            out.println("welcome" + username + "<br>");
        %>
        <form method="post" action="subjectcredits.jsp">
            <table>
                 <h2>Mech department</h2>
                <%
                    rs1 = st1.executeQuery("select * from compulsary_subjects where dept='mech'");
                %>
                <tr><td>Compulsary Subjects</td></tr>
                <%while (rs1.next()) {
                        sub = rs1.getString(1);
                        String cre=rs1.getString(2);
                %>
                <tr><td> <input type="checkbox" checked="checked" value="<%=sub%>" value="<%=cre%>" name="subject"><%=sub%>   <%=cre%></td></tr>
                        <%}%>
                <tr><td>
                        Elective:</td></tr>
                        <%
                            int id2 = 1;

                            rs1 = st.executeQuery("select * from subjects  where dept='mech'");
                            while (rs1.next()) {
                                sub = rs1.getString(1);
                                String cre1=rs1.getString(2);
                        %>
                <tr><td> <input type="checkbox" id="s1<%=id2%>" value="<%=sub%>" value="<%=cre1%>" name="subjects1"  onClick="toggleSelection('s1.<%=id2%>')"><%=sub%>   <%=cre1%></td></tr>
                        <%

                                id2++;
                            }%>           


                <tr><td>Open Elective Subjects</td></tr>
                <%
                    int id = 1;

                    rs = st.executeQuery("select * from open_elective where dept='mech' ");
                    while (rs.next()) {
                        sub = rs.getString(1);
                          String cre2=rs.getString(2);
                %>
                <tr><td> <input type="checkbox" id="s2<%=id%>" value="<%=sub%>" value="<%=cre2%>" name="subjects"  onClick="toggleSelection1('s2<%=id%>')"><%=sub%>   <%=cre2%></td></tr>
                        <%

                                id++;
                            }%>           

                <tr><td>   <input type="submit" value="Next" /></td></tr></table>
            <a href="selectstaff.jsp" class="btn"> Select Staff </a>

        </form>
    </body>


</html>
