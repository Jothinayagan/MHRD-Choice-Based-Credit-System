<%-- 
    Document   : timeslot
    Created on : Mar 23, 2017, 2:20:07 PM
    Author     : Admin
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Scanner"%>
<%@page import="java.io.PrintStream"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
            PrintStream p=new PrintStream(System.out);
        Scanner s=new Scanner(System.in);
        String sub1="";String sub2="",sub3="",sub4="",ele1="",ele2="",oele1="",oele2="";
        String day1[]=new String[8];
         String day2[]=new String[8];
          String day3[]=new String[8];
           String day4[]=new String[8];
            String day5[]=new String[8];
            try{
          //Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                //Connection cn = DriverManager.getConnection("jdbc:ucanaccess:timetable");
                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                Connection cn = DriverManager.getConnection("jdbc:sqlserver://localhost;databaseName=timetable;user=timetable;password=timetable");

  Statement st = cn.createStatement();
 ResultSet rs;
   Statement st1 = cn.createStatement();
 ResultSet rs1;
 rs = st.executeQuery("select * from compulsarysub where dept='it'");
  while(rs.next()){  
        sub1=rs.getString(1);
        sub2=rs.getString(2);
                sub3=rs.getString(3);
                        sub4=rs.getString(4);
        ele1=rs.getString(5);
        ele2=rs.getString(6);
                oele1=rs.getString(7);
                        oele2=rs.getString(8);
                         
  }
   
           //rs.close();
       
          
          day1[0]=sub1;   day1[1]=sub2;   day1[2]=sub3;   day1[3]="FREE";   day1[4]=ele1;   day1[5]=ele2;   day1[6]="FREE"; day1[7]=oele1;
                                day2[0]="FREE";   day2[1]="LAB1";   day2[2]="LAB1";  day2[3]="LAB1";  day2[4]=oele2;   day2[5]=ele1;   day2[6]=ele2; day2[7]="FREE";
                                    day3[0]=sub4;   day3[1]=sub1;   day3[2]=sub2;   day3[3]="FREE";   day3[4]=oele1;   day3[5]=oele2;   day3[6]="FREE"; day3[7]=ele1;
                                        day4[0]=sub3;   day4[1]=sub4;   day4[2]=sub1;   day4[3]=sub2;   day4[4]="FREE";;   day4[5]="LAB2";;   day4[6]="LAB2";   day4[7]="LAB2";
                                             day5[0]=sub2;   day5[1]=sub3;   day5[2]=sub4;   day5[3]=sub1;   day5[4]=ele2;   day5[5]=oele1;   day5[6]=oele2;day5[7]="FREE";      //day1[0]=sub1; day1[1]=sub2; day1[2]=sub3; day1[3]=sub4; day1[4]=ele1; day1[5]=ele2; day1[6]=ele3;
                                         //day1[0]=sub1; day1[1]=sub2; day1[2]=sub3; day1[3]=sub4; day1[4]=ele1; day1[5]=ele2; day1[6]=ele3;
                                      
                                      //day1[0]=sub1; day1[1]=sub2; day1[2]=sub3; day1[3]=sub4; day1[4]=ele1; day1[5]=ele2; day1[6]=ele3;
                                      
                             out.println("<table cellpadding=10 border=1><tr><td>DAY</td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td>6</td><td>7</td><td>8</td><tr>");         
                                     
                                //out.println("-----------------------------------------------------------------------");   
    // out.println("<br>");
                          
                             int pos=1;String position="";
                             out.println("<tr><td>Monday</td>");
        for(int i=0;i<day1.length;i++){
                                           out.print("<td>"+day1[i]+"</td>");
                              
   Statement st12 = cn.createStatement();  
 ResultSet rs12;int r=0;
                                 
 




   r = st12.executeUpdate("insert into set1 values ('"+pos+"','"+day1[i]+"') ");   
    

                                       pos++;
                                      }
        out.println("</tr>");
    pos=1;
          out.println("<tr><td>Tuesday|</td>");
        for(int i=0;i<day2.length;i++){
          
                                            out.print("<td>"+day2[i]+"</td>");
                                            Statement st12 = cn.createStatement();  
 ResultSet rs12;int r=0;
                                 
 




   r = st12.executeUpdate("insert into set1 values ('"+pos+"','"+day2[i]+"') ");   
    

                                       pos++;
                                            
                                      }
 out.println("</tr>");
     pos=1;
               //out.println("-----------------------------------------------------------------------");
              out.println("<tr><td>Wednesday</td>");
        for(int i=0;i<day3.length;i++){
                                           out.print("<td>"+day3[i]+"</td>");
                                      Statement st12 = cn.createStatement();  
 ResultSet rs12;int r=0;
                                 
 




   r = st12.executeUpdate("insert into set1 values ('"+pos+"','"+day3[i]+"') ");   
    

                                       pos++;       
                                      }
         out.println("</tr>");
               //out.println("-----------------------------------------------------------------------");out.println("<br>");
           out.println("<tr><td>Thursday</td>");
               pos=1;
        for(int i=0;i<day4.length;i++){
                                            out.print("<td>"+day4[i]+"</td>");
                                        Statement st12 = cn.createStatement();  
 ResultSet rs12;int r=0;
                                 
 




   r = st12.executeUpdate("insert into set1 values ('"+pos+"','"+day4[i]+"') ");   
    

                                       pos++;    
                                      }out.println("</tr>");
              // out.println("-----------------------------------------------------------------------");out.println("<br>");
         out.println("<tr><td>Friday</td>");
             pos=1;
                                      for(int i=0;i<day5.length;i++){
                                          out.print("<td>"+day5[i]+"</td>");
                                          Statement st12 = cn.createStatement();  
 ResultSet rs12;int r=0;
                                 
 




   r = st12.executeUpdate("insert into set1 values ('"+pos+"','"+day5[i]+"') ");   
    

                                       pos++;   
                                      }
        out.println("</tr>");
           
        
    }
            catch(Exception e){System.out.println(e);}
       %>
    </body>
</html>
