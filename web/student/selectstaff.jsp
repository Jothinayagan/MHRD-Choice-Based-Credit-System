<%-- 
    Document   : insertsubjects
    Created on :Apr 1, 2017, 10:20:41 AM
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
               <link rel="stylesheet" href="css/style.css">
               <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js/index.js"></script>.
    <style>  .wrapper {
    text-align: center;
}

.button {
    position: absolute;
    top: 75%;
}
</style>

    
    </head>
    <body>
                <div class="wrapper">
                       
    
    
        <%
       //Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                //Connection cn = DriverManager.getConnection("jdbc:ucanaccess:timetable");
                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                Connection cn = DriverManager.getConnection("jdbc:sqlserver://localhost;databaseName=timetable;user=timetable;password=timetable");

 Statement st = cn.createStatement();
    ResultSet rs;
      String username=(String)session.getAttribute("user");
    rs = st.executeQuery("select * from student_subjects where username='"+username+"' ");
    String sub="";
     
               out.println("welcome"+"<br>"+username+"<br>");
               %><table>
       <form method="post" action="selectfaculty.jsp">
           <tr><td> Select subject:<select name="subjectname">
        <%while(rs.next()){ 
        sub=rs.getString(2);
        %>
        <option  value="<%=sub%>"><%=sub%></option>
                        <%}%>           
        </select></td></tr><br><br><br><br>
        <tr><td > <input type="submit" value="submit" /></td></tr></table>
       </form>
        <a href="../logout.jsp">Logout</a>
                </div>
    </body>
</html>
