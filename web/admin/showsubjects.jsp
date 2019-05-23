<%@page import="java.sql.PreparedStatement"%>
<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<html lang="en" class="no-js">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
		<meta name="viewport" content="width=device-width, initial-scale=1"> 
                <title>Participant Details</title>
		<meta name="description" content="Modern effects and styles for off-canvas navigation with CSS transitions and SVG animations using Snap.svg" />
		<meta name="keywords" content="sidebar, off-canvas, menu, navigation, effect, inspiration, css transition, SVG, morphing, animation" />
		<meta name="author" content="Codrops" />
		<link rel="shortcut icon" href="../favicon.ico">
		<link rel="stylesheet" type="text/css" href="css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="css/demo.css" />
		<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.2.0/css/font-awesome.min.css" />
		<link rel="stylesheet" type="text/css" href="css/menu_topside.css" />
		<!--[if IE]>
  		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
                    <%
 
     String username=(String)session.getAttribute("user");
    if( username!="admin")
        {}
    else{response.sendRedirect("index.jsp");}
             
        
    
 
 
 
%>
                <style>
.table {
	margin:0px;padding:0px;
	width:55%;
	box-shadow: 10px 10px 5px #888888;
	border:1px solid #000000;
	
	-moz-border-radius-bottomleft:0px;
	-webkit-border-bottom-left-radius:0px;
	border-bottom-left-radius:0px;
	
	-moz-border-radius-bottomright:0px;
	-webkit-border-bottom-right-radius:0px;
	border-bottom-right-radius:0px;
	
	-moz-border-radius-topright:0px;
	-webkit-border-top-right-radius:0px;
	border-top-right-radius:0px;
	
	-moz-border-radius-topleft:0px;
	-webkit-border-top-left-radius:0px;
	border-top-left-radius:0px;
}.table table{
    border-collapse: collapse;
        border-spacing: 0;
	width:100%;
	height:100%;
	margin:0px;padding:0px;
}.table tr:last-child td:last-child {
	-moz-border-radius-bottomright:0px;
	-webkit-border-bottom-right-radius:0px;
	border-bottom-right-radius:0px;
}
.table table tr:first-child td:first-child {
	-moz-border-radius-topleft:0px;
	-webkit-border-top-left-radius:0px;
	border-top-left-radius:0px;
}
.table table tr:first-child td:last-child {
	-moz-border-radius-topright:0px;
	-webkit-border-top-right-radius:0px;
	border-top-right-radius:0px;
}.table tr:last-child td:first-child{
	-moz-border-radius-bottomleft:0px;
	-webkit-border-bottom-left-radius:0px;
	border-bottom-left-radius:0px;
}.table tr:hover td{
	background-color:#ffaaaa;
		

}
.table td{
	vertical-align:middle;
	
	background-color:#ffffff;

	border:1px solid #000000;
	border-width:0px 1px 1px 0px;
	text-align:left;
	padding:8px;
	font-size:12px;
	font-family:Arial Black;
	font-weight:normal;
	color:#000000;
}.table tr:last-child td{
	border-width:0px 1px 0px 0px;
}.table tr td:last-child{
	border-width:0px 0px 1px 0px;
}.table tr:last-child td:last-child{
	border-width:0px 0px 0px 0px;
}
.table tr:first-child td{
		background:-o-linear-gradient(bottom, #ff5656 5%, #7f0000 100%);	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #ff5656), color-stop(1, #7f0000) );
	background:-moz-linear-gradient( center top, #ff5656 5%, #7f0000 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#ff5656", endColorstr="#7f0000");	background: -o-linear-gradient(top,#ff5656,7f0000);

	background-color:#ff5656;
	border:0px solid #000000;
	text-align:center;
	border-width:0px 0px 1px 1px;
	font-size:16px;
	font-family:Arial;
	font-weight:bold;
	color:#ffffff;
}
.table tr:first-child:hover td{
	background:-o-linear-gradient(bottom, #ff5656 5%, #7f0000 100%);	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #ff5656), color-stop(1, #7f0000) );
	background:-moz-linear-gradient( center top, #ff5656 5%, #7f0000 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#ff5656", endColorstr="#7f0000");	background: -o-linear-gradient(top,#ff5656,7f0000);

	background-color:#ff5656;
}
.table tr:first-child td:first-child{
	border-width:0px 0px 1px 0px;
}
.table tr:first-child td:last-child{
	border-width:0px 0px 1px 1px;
}     
.table2 {
	margin:0px;padding:0px;
	width:55%;
	box-shadow: 10px 10px 5px #888888;
	border:1px solid #000000;
	
	-moz-border-radius-bottomleft:0px;
	-webkit-border-bottom-left-radius:0px;
	border-bottom-left-radius:0px;
	
	-moz-border-radius-bottomright:0px;
	-webkit-border-bottom-right-radius:0px;
	border-bottom-right-radius:0px;
	
	-moz-border-radius-topright:0px;
	-webkit-border-top-right-radius:0px;
	border-top-right-radius:0px;
	
	-moz-border-radius-topleft:0px;
	-webkit-border-top-left-radius:0px;
	border-top-left-radius:0px;
}.table2 table{
    border-collapse: collapse;
        border-spacing: 0;
	width:100%;
	height:100%;
	margin:0px;padding:0px;
}.table2 tr:last-child td:last-child {
	-moz-border-radius-bottomright:0px;
	-webkit-border-bottom-right-radius:0px;
	border-bottom-right-radius:0px;
}
.table2 table tr:first-child td:first-child {
	-moz-border-radius-topleft:0px;
	-webkit-border-top-left-radius:0px;
	border-top-left-radius:0px;
}
.table2 table tr:first-child td:last-child {
	-moz-border-radius-topright:0px;
	-webkit-border-top-right-radius:0px;
	border-top-right-radius:0px;
}.table2 tr:last-child td:first-child{
	-moz-border-radius-bottomleft:0px;
	-webkit-border-bottom-left-radius:0px;
	border-bottom-left-radius:0px;
}.table2 tr:hover td{
	background-color:#ffffff;
		

}
.table2 td{
	vertical-align:middle;
	
	background-color:#e5e5e5;

	border:1px solid #000000;
	border-width:0px 1px 1px 0px;
	text-align:center;
	padding:7px;
	font-size:12px;
	font-family:Arial;
	font-weight:normal;
	color:#000000;
}.table2 tr:last-child td{
	border-width:0px 1px 0px 0px;
}.table2 tr td:last-child{
	border-width:0px 0px 1px 0px;
}.table2 tr:last-child td:last-child{
	border-width:0px 0px 0px 0px;
}
.table2 tr:first-child td{
		background:-o-linear-gradient(bottom, #4c4c4c 5%, #000000 100%);	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #4c4c4c), color-stop(1, #000000) );
	background:-moz-linear-gradient( center top, #4c4c4c 5%, #000000 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#4c4c4c", endColorstr="#000000");	background: -o-linear-gradient(top,#4c4c4c,000000);

	background-color:#4c4c4c;
	border:0px solid #000000;
	text-align:center;
	border-width:0px 0px 1px 1px;
	font-size:14px;
	font-family:Arial;
	font-weight:bold;
	color:#ffffff;
}
.table2 tr:first-child:hover td{
	background:-o-linear-gradient(bottom, #4c4c4c 5%, #000000 100%);	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #4c4c4c), color-stop(1, #000000) );
	background:-moz-linear-gradient( center top, #4c4c4c 5%, #000000 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#4c4c4c", endColorstr="#000000");	background: -o-linear-gradient(top,#4c4c4c,000000);

	background-color:#4c4c4c;
}
.table2 tr:first-child td:first-child{
	border-width:0px 0px 1px 0px;
}
.table2 tr:first-child td:last-child{
	border-width:0px 0px 1px 1px;
}
.btn:hover {
  background: #3cb0fd;
  background-image: -webkit-linear-gradient(top, #3cb0fd, #3498db);
  background-image: -moz-linear-gradient(top, #3cb0fd, #3498db);
  background-image: -ms-linear-gradient(top, #3cb0fd, #3498db);
  background-image: -o-linear-gradient(top, #3cb0fd, #3498db);
  background-image: linear-gradient(to bottom, #3cb0fd, #3498db);
  text-decoration: none;
}

        </style>
	</head>
        <body>
           
		<div class="container">
			<div class="menu-wrap">
				<nav class="menu-top">
					
						
					</div>
				</nav>
							</div>
						<h1>Details </h1>
						<nav class="codrops-demos">
        
       
                                                    
                                                    
                                                    
                                                    
         <%  
               int wir=0,web=0,ooad=0,cns=0,sqm=0,dba=0,dma=0,dee=0,c=0,fop=0,java=0,ds=0,em=0,fm=0,dt=0,nt=0,me1=0,me2=0,me3=0,me4=0,mo1=0,mo2=0,mo3=0,mo4=0,emf=0,vls=0,emb=0,dc=0,ee1=0,ee2=0,ee3=0,ee4=0,eo1=0,eo2=0,eo3=0,eo4=0;
                int wir1=0,web1=0,ooad1=0,cns1=0,sqm1=0,dba1=0,dma1=0,dee1=0,c1=0,fop1=0,java1=0,ds1=0,em1=0,fm1=0,dt1=0,nt1=0,me11=0,me21=0,me31=0,me41=0,mo11=0,mo21=0,mo31=0,mo41=0,emf1=0,vls1=0,emb1=0,dc1=0,ee11=0,ee21=0,ee31=0,ee41=0,eo11=0,eo21=0,eo31=0,eo41=0;
    //Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                //Connection cn = DriverManager.getConnection("jdbc:ucanaccess:timetable");
                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                Connection cn = DriverManager.getConnection("jdbc:sqlserver://localhost;databaseName=timetable;user=timetable;password=timetable");

String fopp="fop";
 PreparedStatement psss = cn.prepareStatement("select count(*) from student_subjects where subject_name='wireless'    ");
   
    ResultSet rsss = psss.executeQuery();
      while (rsss.next()) 
      {
          wir= rsss.getInt(1);
         }
    PreparedStatement p1 = cn.prepareStatement("select count(*)  from Student_subjects where subject_name='webtech'  ");
    ResultSet r1 = p1.executeQuery();
    while (r1.next()) 
      {
         web= r1.getInt(1);
         }
    /*while (r1.next()) 
      {
            String pr=r1.getString("fit");
if (pr.equals("null")){
}else {
 fit++;
}
      }*/
    PreparedStatement p2 = cn.prepareStatement("select count(*)  from Student_subjects where subject_name='OOAD'  ");
    ResultSet r2 = p2.executeQuery();
      while (r2.next()) 
      {
         ooad= r2.getInt(1);
         }
    /*      while (r2.next()) 
    {
String er=r2.getString("ds");
if (er.equals("null")){
}else {
  ds++;
}
    }*/
     PreparedStatement p3 = cn.prepareStatement("select count(*)  from Student_subjects where subject_name='CNS'  ");
 
    ResultSet r3 = p3.executeQuery();
      while (r3.next()) 
      {
          cns=r3.getInt(1);
      }  
      /*{
        String hu=r3.getString("java");
if (hu.equals("null")){
}else {
  java++;
}
      }*/
      PreparedStatement p4 = cn.prepareStatement("select count(*)  from Student_subjects where subject_name='SQM'  ");
 
    ResultSet r4 = p4.executeQuery();
      while (r4.next()) 
      {
          sqm=r4.getInt(1);
      }
      /*{  String qu=r4.getString("quiz");
if (qu.equals("null")){
}else{
             ca++;
}
      }*/
       PreparedStatement p5 = cn.prepareStatement("select count(*)  from Student_subjects where subject_name='DBA'  ");
 
    ResultSet r5 = p5.executeQuery();
      while (r5.next()) 
      {
          dba=r5.getInt(1);
      }
      
      /*{
           String funn=r5.getString("daa");
if (funn.equals("null")){
}else {
             daa++;
}
      }*/
      PreparedStatement p6 = cn.prepareStatement("select count(*)  from Student_subjects where subject_name='DMA'  ");
 
    ResultSet r6 = p6.executeQuery();
      while (r6.next())
      {
          dma=r6.getInt(1);
      }    
          
      /*{
          String cd=r6.getString("ss");
if (cd.equals("null")){
}
else {            
             ss++;
}
      }*/
       PreparedStatement p10 = cn.prepareStatement("select count(*)  from Student_subjects where subject_name='DEE'  ");
 
    ResultSet r10 = p10.executeQuery();
      while (r10.next()) 
      {
          dee=r10.getInt(1);
      }
      PreparedStatement p7 = cn.prepareStatement("select count(*)  from Student_subjects where subject_name='C'  ");
 
    ResultSet r7 = p7.executeQuery();
      while (r7.next())
      {
          c=r7.getInt(1);
      } 
      PreparedStatement p8 = cn.prepareStatement("select count(*)  from Student_subjects where subject_name='FOP'  ");
 
    ResultSet r8 = p8.executeQuery();
      while (r8.next())
      {
          fop=r8.getInt(1);
      } 
      PreparedStatement p9 = cn.prepareStatement("select count(*)  from Student_subjects where subject_name='JAVA'  ");
 
    ResultSet r9 = p9.executeQuery();
      while (r9.next())
      {
          java=r9.getInt(1);
      } 
      PreparedStatement p11= cn.prepareStatement("select count(*)  from Student_subjects where subject_name='DS'  ");
 
    ResultSet r11 = p11.executeQuery();
      while (r11.next())
      {
          ds=r11.getInt(1);
      } 
      PreparedStatement p66 = cn.prepareStatement("select count(*)  from  Student_subjects where subject_name='EM'  ");
 
    ResultSet r66 = p66.executeQuery();
      while (r66.next()) 
      {
          em=r66.getInt(1);
      }PreparedStatement p67 = cn.prepareStatement("select count(*)  from  Student_subjects where subject_name='FM'  ");
 
    ResultSet r67 = p67.executeQuery();
      while (r67.next()) 
      {
          fm=r67.getInt(1);
      }PreparedStatement p68 = cn.prepareStatement("select count(*)  from  Student_subjects where subject_name='DT'  ");
 
    ResultSet r68 = p68.executeQuery();
      while (r68.next()) 
      {
          dt=r68.getInt(1);
      }PreparedStatement p69 = cn.prepareStatement("select count(*)  from  Student_subjects where subject_name='NT'  ");
 
    ResultSet r69 = p69.executeQuery();
      while (r69.next()) 
      {
          nt=r69.getInt(1);
      }PreparedStatement p70 = cn.prepareStatement("select count(*)  from  Student_subjects where subject_name='ME1'  ");
 
    ResultSet r70 = p70.executeQuery();
      while (r70.next()) 
      {
          me1=r70.getInt(1);
      }PreparedStatement p71 = cn.prepareStatement("select count(*)  from Student_subjects where subject_name='ME2'  ");
 
    ResultSet r71= p71.executeQuery();
      while (r71.next()) 
      {
          me2=r71.getInt(1);
      }PreparedStatement p72 = cn.prepareStatement("select count(*)  from  Student_subjects where subject_name='ME3'  ");
 
    ResultSet r72 = p72.executeQuery();
      while (r72.next()) 
      {
          me3=r72.getInt(1);
      }PreparedStatement p73 = cn.prepareStatement("select count(*)  from Student_subjects where subject_name='ME4'  ");
 
    ResultSet r73 = p73.executeQuery();
      while (r73.next()) 
      {
          me4=r73.getInt(1);
      }PreparedStatement p74 = cn.prepareStatement("select count(*)  from  Student_subjects where subject_name='MO1'  ");
 
    ResultSet r74 = p74.executeQuery();
      while (r74.next()) 
      {
          mo1=r74.getInt(1);
      }PreparedStatement p75 = cn.prepareStatement("select count(*)  from  Student_subjects where subject_name='MO2'  ");
 
    ResultSet r75 = p75.executeQuery();
      while (r75.next()) 
      {
          mo2=r75.getInt(1);
      }PreparedStatement p76 = cn.prepareStatement("select count(*)  from  Student_subjects where subject_name='MO3'  ");
 
    ResultSet r76 = p76.executeQuery();
      while (r76.next()) 
      {
          mo3=r76.getInt(1);
      }PreparedStatement p77 = cn.prepareStatement("select count(*)  from Student_subjects where subject_name='MO4'  ");
 
    ResultSet r77 = p77.executeQuery();
      while (r77.next()) 
      {
          mo4=r77.getInt(1);
      }PreparedStatement p78 = cn.prepareStatement("select count(*)  from  Student_subjects where subject_name='EMF'  ");
 
    ResultSet r78 = p78.executeQuery();
      while (r78.next()) 
      {
          emf=r78.getInt(1);
      }PreparedStatement p79 = cn.prepareStatement("select count(*)  from  Student_subjects where subject_name='VLS'  ");
 
    ResultSet r79 = p79.executeQuery();
      while (r79.next()) 
      {
          vls=r79.getInt(1);
      }PreparedStatement p80 = cn.prepareStatement("select count(*)  from  Student_subjects where subject_name='EMB'  ");
 
    ResultSet r80 = p80.executeQuery();
      while (r80.next()) 
      {
          emb=r80.getInt(1);
      }PreparedStatement p81 = cn.prepareStatement("select count(*)  from Student_subjects where subject_name='DC'  ");
 
    ResultSet r81 = p81.executeQuery();
      while (r81.next()) 
      {
          dc=r81.getInt(1);
      }PreparedStatement p83 = cn.prepareStatement("select count(*)  from Student_subjects where subject_name='EE1'  ");
 
    ResultSet r83 = p83.executeQuery();
      while (r83.next()) 
      {
          ee1=r83.getInt(1);
      }PreparedStatement p84 = cn.prepareStatement("select count(*)  from  Student_subjects where subject_name='EE2'  ");
 
    ResultSet r84 = p84.executeQuery();
      while (r84.next()) 
      {
          ee2=r84.getInt(1);
      }PreparedStatement p85 = cn.prepareStatement("select count(*)  from  Student_subjects where subject_name='EE3'  ");
 
    ResultSet r85 = p85.executeQuery();
      while (r85.next()) 
      {
          ee3=r85.getInt(1);
      }PreparedStatement p86 = cn.prepareStatement("select count(*)  from  Student_subjects where subject_name='EE4'  ");
 
    ResultSet r86 = p86.executeQuery();
      while (r86.next()) 
      {
          ee4=r86.getInt(1);
      }PreparedStatement p87 = cn.prepareStatement("select count(*)  from  Student_subjects where subject_name='EO1'  ");
 
    ResultSet r87 = p87.executeQuery();
      while (r87.next()) 
      {
          eo1=r87.getInt(1);
      }PreparedStatement p88 = cn.prepareStatement("select count(*)  from  Student_subjects where subject_name='EO2'  ");
 
    ResultSet r88 = p88.executeQuery();
      while (r88.next()) 
      {
          eo2=r88.getInt(1);
      }
       
      
      PreparedStatement p89 = cn.prepareStatement("select count(*)  from  Student_subjects where subject_name='EO3'  ");
 
    ResultSet r89 = p89.executeQuery();
      while (r89.next()) 
      {
          eo3=r89.getInt(1);
      }
      
      PreparedStatement p90 = cn.prepareStatement("select count(*)  from  Student_subjects where subject_name='EO4'  ");
 
    ResultSet r90 = p90.executeQuery();
      while (r90.next()) 
      {
          eo4=r90.getInt(1);
      }
      /*{
          String cd=r10.getString("cartoon");
if (cd.equals("null")){
}
else {            
             cartoon++;
}
      }*/
 
 
 /*
     PreparedStatement p12 = cn.prepareStatement("select count(*)  from Student_subjects where subject_name='cns'  ");
 
    ResultSet r12 = p12.executeQuery();
      while (r12.next()) 
      {
          cns=r12.getInt(1);
      }    
          
      /*
      {
          String cd=r12.getString("cns");
if (cd.equals("null")){
}
else {            
             cns++;
}
      }
 
 
 
  PreparedStatement p13 = cn.prepareStatement("select count(*)  from Student_subjects where subject_name='wit'  ");
 
    ResultSet r13 = p13.executeQuery();
      while (r13.next()) 
      {
          wit=r13.getInt(1);
      }   
          /*
      {
          String cd=r13.getString("wit");
if (cd.equals("null")){
}
else {            
             wit++;
}
      }
 PreparedStatement p14 = cn.prepareStatement("select count(*)  from Student_subjects where subject_name='mc'   ");
 
    ResultSet r14 = p14.executeQuery();
      while (r14.next()) 
      {
          mc=r14.getInt(1);
      }
          
          /*{
          String cd=r14.getString("mc");
if (cd.equals("null")){
}
else {            
             mc++;
}
      }
 PreparedStatement p15 = cn.prepareStatement("select count(*)  from Student_subjects where subject_name='wt'  ");
 
    ResultSet r15 = p15.executeQuery();
      while (r15.next()) 
      {
          wt=r15.getInt(1);
      }
      */
      
      /*{
          String cd=r15.getString("wt");
if (cd.equals("null")){
}
else {            
             wt++;
}
      }*/
 
         

PreparedStatement psss1 = cn.prepareStatement("select count(*) from faculty_subjects where subject_name='wireless'    ");
   
    ResultSet rsss1 = psss1.executeQuery();
      while (rsss1.next()) 
      {
          wir1= rsss1.getInt(1);
         }
    PreparedStatement p12 = cn.prepareStatement("select count(*)  from faculty_subjects  where subject_name='webtech'  ");
    ResultSet r12 = p12.executeQuery();
    while (r12.next()) 
      {
          web1= r12.getInt(1);
         }
    /*while (r1.next()) 
      {
            String pr=r1.getString("fit");
if (pr.equals("null")){
}else {
 fit++;
}
      }*/
    PreparedStatement p22 = cn.prepareStatement("select count(*)  from faculty_subjects  where subject_name='OOAD'  ");
    ResultSet r22 = p22.executeQuery();
      while (r22.next()) 
      {
          ooad1= r22.getInt(1);
         }
    /*      while (r2.next()) 
    {
String er=r2.getString("ds");
if (er.equals("null")){
}else {
  ds++;
}
    }*/
     PreparedStatement p33 = cn.prepareStatement("select count(*)  from faculty_subjects  where subject_name='CNS'  ");
 
    ResultSet r33 = p33.executeQuery();
      while (r33.next()) 
      {
           cns1=r33.getInt(1);
      }  
      /*{
        String hu=r3.getString("java");
if (hu.equals("null")){
}else {
  java++;
}
      }*/
       PreparedStatement p55 = cn.prepareStatement("select count(*)  from  faculty_subjects where subject_name='SQM'  ");
 
    ResultSet r55 = p55.executeQuery();
      while (r55.next()) 
      {
          sqm1=r55.getInt(1);
      }
      
      /*{
           String funn=r5.getString("daa");
if (funn.equals("null")){
}else {
             daa++;
}
      }*/
      PreparedStatement p91= cn.prepareStatement("select count(*)  from faculty_subjects where subject_name='DMA'  ");
 
    ResultSet r91 = p91.executeQuery();
      while (r91.next())
      {
          dma1=r91.getInt(1);
      }    
          
      /*{
          String cd=r6.getString("ss");
if (cd.equals("null")){
}
else {            
             ss++;
}
      }*/
         
 

 
       PreparedStatement p100 = cn.prepareStatement("select count(*)  from  faculty_subjects where subject_name='DBA'  ");
 
    ResultSet r100 = p100.executeQuery();
      while (r100.next()) 
      {
          dba1=r100.getInt(1);
      }
      
      /*{
          String cd=r10.getString("cartoon");
if (cd.equals("null")){
}
else {            
             cartoon++;
}
      }*/
 
 
 
     PreparedStatement p120 = cn.prepareStatement("select count(*)  from  faculty_subjects where subject_name='DEE'  ");
 
    ResultSet r120 = p120.executeQuery();
      while (r120.next()) 
      {
          dee1=r120.getInt(1);
      }    
           PreparedStatement p13 = cn.prepareStatement("select count(*)  from  faculty_subjects where subject_name='C'  ");
 
    ResultSet r13 = p13.executeQuery();
      while (r13.next()) 
      {
          c1=r13.getInt(1);
      }
      
       PreparedStatement p14 = cn.prepareStatement("select count(*)  from  faculty_subjects where subject_name='FOP'  ");
 
    ResultSet r14 = p14.executeQuery();
      while (r14.next()) 
      {
          fop1=r14.getInt(1);
      }
      
       PreparedStatement p15 = cn.prepareStatement("select count(*)  from  faculty_subjects where subject_name='JAVA'  ");
 
    ResultSet r15 = p15.executeQuery();
      while (r15.next()) 
      {
          java1=r15.getInt(1);
      }
      PreparedStatement p16 = cn.prepareStatement("select count(*)  from  faculty_subjects where subject_name='DS'  ");
 
    ResultSet r16 = p16.executeQuery();
      while (r16.next()) 
      {
          ds1=r16.getInt(1);
      }PreparedStatement p17 = cn.prepareStatement("select count(*)  from  faculty_subjects where subject_name='EM'  ");
 
    ResultSet r17 = p17.executeQuery();
      while (r17.next()) 
      {
          em1=r17.getInt(1);
      }PreparedStatement p18 = cn.prepareStatement("select count(*)  from  faculty_subjects where subject_name='FM'  ");
 
    ResultSet r18 = p18.executeQuery();
      while (r18.next()) 
      {
          fm1=r18.getInt(1);
      }PreparedStatement p19 = cn.prepareStatement("select count(*)  from  faculty_subjects where subject_name='DT'  ");
 
    ResultSet r19 = p19.executeQuery();
      while (r19.next()) 
      {
          dt1=r19.getInt(1);
      }PreparedStatement p20 = cn.prepareStatement("select count(*)  from  faculty_subjects where subject_name='NT'  ");
 
    ResultSet r20 = p20.executeQuery();
      while (r20.next()) 
      {
          nt1=r20.getInt(1);
      }PreparedStatement p21 = cn.prepareStatement("select count(*)  from  faculty_subjects where subject_name='ME1'  ");
 
    ResultSet r21 = p21.executeQuery();
      while (r21.next()) 
      {
          me11=r21.getInt(1);
      }PreparedStatement p23 = cn.prepareStatement("select count(*)  from  faculty_subjects where subject_name='ME2'  ");
 
    ResultSet r23= p23.executeQuery();
      while (r23.next()) 
      {
          me21=r23.getInt(1);
      }PreparedStatement p24 = cn.prepareStatement("select count(*)  from  faculty_subjects where subject_name='ME3'  ");
 
    ResultSet r24 = p24.executeQuery();
      while (r24.next()) 
      {
          me31=r24.getInt(1);
      }PreparedStatement p25 = cn.prepareStatement("select count(*)  from  faculty_subjects where subject_name='ME4'  ");
 
    ResultSet r25 = p25.executeQuery();
      while (r25.next()) 
      {
          me41=r25.getInt(1);
      }PreparedStatement p26 = cn.prepareStatement("select count(*)  from  faculty_subjects where subject_name='MO1'  ");
 
    ResultSet r26 = p26.executeQuery();
      while (r26.next()) 
      {
          mo11=r26.getInt(1);
      }PreparedStatement p27 = cn.prepareStatement("select count(*)  from  faculty_subjects where subject_name='MO2'  ");
 
    ResultSet r27 = p27.executeQuery();
      while (r27.next()) 
      {
          mo21=r27.getInt(1);
      }PreparedStatement p28 = cn.prepareStatement("select count(*)  from  faculty_subjects where subject_name='MO3'  ");
 
    ResultSet r28 = p28.executeQuery();
      while (r28.next()) 
      {
          mo31=r28.getInt(1);
      }PreparedStatement p29 = cn.prepareStatement("select count(*)  from  faculty_subjects where subject_name='MO4'  ");
 
    ResultSet r29 = p29.executeQuery();
      while (r29.next()) 
      {
          mo41=r29.getInt(1);
      }PreparedStatement p30 = cn.prepareStatement("select count(*)  from  faculty_subjects where subject_name='EMF'  ");
 
    ResultSet r30 = p30.executeQuery();
      while (r30.next()) 
      {
          emf1=r30.getInt(1);
      }PreparedStatement p31 = cn.prepareStatement("select count(*)  from  faculty_subjects where subject_name='VLS'  ");
 
    ResultSet r31 = p31.executeQuery();
      while (r31.next()) 
      {
          vls1=r31.getInt(1);
      }PreparedStatement p32 = cn.prepareStatement("select count(*)  from  faculty_subjects where subject_name='EMB'  ");
 
    ResultSet r32 = p32.executeQuery();
      while (r32.next()) 
      {
          emb1=r32.getInt(1);
      }PreparedStatement p34 = cn.prepareStatement("select count(*)  from  faculty_subjects where subject_name='DC'  ");
 
    ResultSet r34 = p34.executeQuery();
      while (r34.next()) 
      {
          dc1=r34.getInt(1);
      }PreparedStatement p35 = cn.prepareStatement("select count(*)  from  faculty_subjects where subject_name='EE1'  ");
 
    ResultSet r35 = p35.executeQuery();
      while (r35.next()) 
      {
          ee11=r35.getInt(1);
      }PreparedStatement p36 = cn.prepareStatement("select count(*)  from  faculty_subjects where subject_name='EE2'  ");
 
    ResultSet r36 = p36.executeQuery();
      while (r36.next()) 
      {
          ee21=r36.getInt(1);
      }PreparedStatement p37 = cn.prepareStatement("select count(*)  from  faculty_subjects where subject_name='EE3'  ");
 
    ResultSet r37 = p37.executeQuery();
      while (r37.next()) 
      {
          ee31=r37.getInt(1);
      }PreparedStatement p38 = cn.prepareStatement("select count(*)  from  faculty_subjects where subject_name='EE4'  ");
 
    ResultSet r38 = p38.executeQuery();
      while (r38.next()) 
      {
          ee41=r38.getInt(1);
      }PreparedStatement p39 = cn.prepareStatement("select count(*)  from  faculty_subjects where subject_name='EO1'  ");
 
    ResultSet r39 = p39.executeQuery();
      while (r39.next()) 
      {
          eo11=r39.getInt(1);
      }PreparedStatement p40 = cn.prepareStatement("select count(*)  from  faculty_subjects where subject_name='EO2'  ");
 
    ResultSet r40 = p40.executeQuery();
      while (r40.next()) 
      {
          eo21=r40.getInt(1);
      }
       
      
      PreparedStatement p41 = cn.prepareStatement("select count(*)  from  faculty_subjects where subject_name='EO3'  ");
 
    ResultSet r41 = p41.executeQuery();
      while (r41.next()) 
      {
          eo31=r41.getInt(1);
      }
      
      PreparedStatement p42 = cn.prepareStatement("select count(*)  from  faculty_subjects where subject_name='EO4'  ");
 
    ResultSet r42 = p42.executeQuery();
      while (r42.next()) 
      {
          eo41=r42.getInt(1);
      }
      
      
      /*
      {
          String cd=r12.getString("cns");
if (cd.equals("null")){
}
else {            
             cns++;
}
      }
 
 
 
  PreparedStatement p130 = cn.prepareStatement("select count(*)  from  faculty_subjects where subject_name='wit'  ");
 
    ResultSet r130 = p130.executeQuery();
      while (r130.next()) 
      {
          wit1=r130.getInt(1);
      }   
          /*
      {
          String cd=r13.getString("wit");
if (cd.equals("null")){
}
else {            
             wit++;
}
      }/
 PreparedStatement p140 = cn.prepareStatement("select count(*)  from  faculty_subjects where subject_name='mc'   ");
 
    ResultSet r140 = p140.executeQuery();
      while (r140.next()) 
      {
          mc1=r140.getInt(1);
      }
          
          /*{
          String cd=r14.getString("mc");
if (cd.equals("null")){
}
else {            
             mc++;
}
      }/
 PreparedStatement p150 = cn.prepareStatement("select count(*)  from  faculty_subjects where subject_name='wt'  ");
 
    ResultSet r150 = p150.executeQuery();
      while (r150.next()) 
      {
          wt1=r150.getInt(1);
      }
      
      /*{
          String cd=r15.getString("wt");
if (cd.equals("null")){
}
else {            
             wt++;
}
      }*/
 
         
%>                           
                                                  
<p><h2>Student<h2></p>                               
           <div class="table"  >
                <table >
                    <tr>
                        <td >
                     SUBJECTS
                        </td>
                        <td>
                     TotalSelection
                        </td>
                      
                    </tr>
                    <tr>
                        <td>
                          Wireless
                        </td>
                        <td >
                            <%=wir%>
                        </td>
                       
                    </tr>
                    <tr>
                        <td >
                           Webtech
                        </td>
                        <td>
                             <%=web%>
                        </td>
                      
                    </tr>
                    <tr>
                        <td >
                       OOAD
                        </td>
                        <td>
                            <%=ooad%>
                        </td>
                       
                    </tr>
                    <tr>
                        <td >
                  CNS
                        </td>
                        <td>
                         <%=cns%>
                        </td>
                       
                    </tr>
                      
                  <tr>
                        <td >
               SQM
                        </td>
                        <td>
                         <%=sqm%>
                        </td>
                       
                    </tr>
                      <tr>
                        <td >
              DBA
                        </td>
                        <td>
                         <%=dba%>
                        </td>
                       
                    </tr>
                     <tr>
                        <td >
             DMA
                        </td>
                        <td>
                         <%=dma%>
                        </td>
                       
                    </tr> 
                      <tr>
                        <td >
                           DEE
                        </td>
                        <td>
                             <%=dee%>
                        </td>
                      
                    </tr>
                      <tr>
                        <td >
                           C
                        </td>
                        <td>
                             <%=c%>
                        </td>
                      
                    </tr>
                      <tr>
                        <td >
                           FOP
                        </td>
                        <td>
                             <%=fop%>
                        </td>
                      
                    </tr>
                      <tr>
                        <td >
                           JAVA
                        </td>
                        <td>
                             <%=java%>
                        </td>
                      
                    </tr>
                      <tr>
                        <td >
                           DS
                        </td>
                        <td>
                             <%=ds%>
                        </td>
                      
                    </tr>
                   
                        
                    </tr>
                      <tr>
                        <td >
                           EM
                        </td>
                        <td>
                             <%=em%>
                        </td>
                      
                    </tr>
                   
                        
                    </tr>
                      <tr>
                        <td >
                           FM
                        </td>
                        <td>
                             <%=fm%>
                        </td>
                      
                    </tr>
                   
                        
                    </tr>
                      <tr>
                        <td >
                           DT
                        </td>
                        <td>
                             <%=dt%>
                        </td>
                      
                    </tr>
                   
                        
                    </tr>
                      <tr>
                        <td >
                           NT
                        </td>
                        <td>
                             <%=nt%>
                        </td>
                      
                    </tr>
                   
                        
                    </tr>
                      <tr>
                        <td >
                           ME1
                        </td>
                        <td>
                             <%=me1%>
                        </td>
                      
                    </tr>
                   
                        
                    </tr>
                      <tr>
                        <td >
                           ME2
                        </td>
                        <td>
                             <%=me2%>
                        </td>
                      
                    </tr>
                   
                        
                    </tr>
                      <tr>
                        <td >
                           ME3
                        </td>
                        <td>
                             <%=me3%>
                        </td>
                      
                    </tr>
                   
                        
                    </tr>
                      <tr>
                        <td >
                           ME4
                        </td>
                        <td>
                             <%=me4%>
                        </td>
                      
                    </tr>
                   
                        
                    </tr>
                      <tr>
                        <td >
                           MO1
                        </td>
                        <td>
                             <%=mo1%>
                        </td>
                      
                    </tr>
                   
                        
                    </tr>
                      <tr>
                        <td >
                           MO2
                        </td>
                        <td>
                             <%=mo2%>
                        </td>
                      
                    </tr>
                   
                        
                    </tr>
                      <tr>
                        <td >
                           MO3
                        </td>
                        <td>
                             <%=mo3%>
                        </td>
                      
                    </tr>
                   
                        
                    </tr>
                      <tr>
                        <td >
                           MO4
                        </td>
                        <td>
                             <%=mo4%>
                        </td>
                      
                    </tr>
                   
                        
                    </tr>
                      <tr>
                        <td >
                           EMF
                        </td>
                        <td>
                             <%=emf%>
                        </td>
                      
                    </tr>
                   
                        
                    </tr>
                      <tr>
                        <td >
                           VLS
                        </td>
                        <td>
                             <%=vls%>
                        </td>
                      
                    </tr>
                   
                        
                    </tr>
                      <tr>
                        <td >
                           EMB
                        </td>
                        <td>
                             <%=emb%>
                        </td>
                      
                    </tr>
                   
                        
                    </tr>
                      <tr>
                        <td>
                           DC
                        </td>
                        <td>
                             <%=dc%>
                        </td>
                      
                    </tr>
                   
                        
                    </tr>
                      <tr>
                        <td >
                           EE1
                        </td>
                        <td>
                             <%=ee1%>
                        </td>
                      
                    </tr>
                   
                        
                    </tr>
                      <tr>
                        <td >
                           EE2
                        </td>
                        <td>
                             <%=ee2%>
                        </td>
                      
                    </tr>
                   
                        
                    </tr>
                      <tr>
                        <td >
                           EE3
                        </td>
                        <td>
                             <%=ee3%>
                        </td>
                      
                    </tr>
                   
                        
                    </tr>
                      <tr>
                        <td >
                           EE4
                        </td>
                        <td>
                             <%=ee4%>
                        </td>
                      
                    </tr>
                   
                        
                    </tr>
                      <tr>
                        <td >
                           EO1
                        </td>
                        <td>
                             <%=eo1%>
                        </td>
                      
                    </tr>
                   
                        
                    </tr>
                      <tr>
                        <td >
                           EO2
                        </td>
                        <td>
                             <%=eo2%>
                        </td>
                      
                    </tr>
                   
                        
                    </tr>
                      <tr>
                        <td >
                           EO3
                        </td>
                        <td>
                             <%=eo3%>
                        </td>
                      
                    </tr>
                   
                        
                    </tr>
                      <tr>
                        <td >
                           EO4
                        </td>
                        <td>
                             <%=eo4%>
                        </td>
                      
                    </tr>
                   
                    
                    
                    
                    
                    
                    
                    
                </table>
            </div>
                        
                    
                        
<p><h2>Faculty<h2></p>                           
         <div class="table2"  >
                <table >
                    <tr>
                        <td >
                     SUBJECTS
                        </td>
                        <td>
                     TotalSelection
                        </td>
                      
                    </tr>
                    <tr>
                        <td>
                          Wireless
                        </td>
                        <td >
                            <%=wir1%>
                        </td>
                       
                    </tr>
                    <tr>
                        <td >
                           Webtech
                        </td>
                        <td>
                             <%=web1%>
                        </td>
                      
                    </tr>
                    <tr>
                        <td >
                       OOAD
                        </td>
                        <td>
                            <%=ooad1%>
                        </td>
                       
                    </tr>
                    <tr>
                        <td >
                  CNS
                        </td>
                        <td>
                         <%=cns1%>
                        </td>
                       
                    </tr>
                      
                  <tr>
                        <td >
               SQM
                        </td>
                        <td>
                         <%=sqm1%>
                        </td>
                       
                    </tr>
                      <tr>
                        <td >
              DBA
                        </td>
                        <td>
                         <%=dba1%>
                        </td>
                       
                    </tr>
                     <tr>
                        <td >
             DMA
                        </td>
                        <td>
                         <%=dma1%>
                        </td>
                       
                    </tr> 
                     
                     <tr>
                        <td >
                           DEE
                        </td>
                        <td>
                             <%=dee1%>
                        </td>
                      
                    </tr>
                     <tr>
                        <td >
                           C
                        </td>
                        <td>
                             <%=c1%>
                        </td>
                      
                    </tr>
                     <tr>
                        <td >
                           FOP
                        </td>
                        <td>
                             <%=fop1%>
                        </td>
                      
                    </tr>
                     <tr>
                        <td >
                           JAVA
                        </td>
                        <td>
                             <%=java1%>
                        </td>
                      
                    </tr>
                     <tr>
                        <td >
                           DS
                        </td>
                        <td>
                             <%=ds1%>
                        </td>
                      
                    </tr>
                        
                    </tr>
                      <tr>
                        <td >
                           EM1
                        </td>
                        <td>
                             <%=em1%>
                        </td>
                      
                    </tr>
                   
                        
                    </tr>
                      <tr>
                        <td >
                           FM1
                        </td>
                        <td>
                             <%=fm1%>
                        </td>
                      
                    </tr>
                   
                        
                    </tr>
                      <tr>
                        <td >
                           DT1
                        </td>
                        <td>
                             <%=dt1%>
                        </td>
                      
                    </tr>
                   
                        
                    </tr>
                      <tr>
                        <td >
                           NT1
                        </td>
                        <td>
                             <%=nt1%>
                        </td>
                      
                    </tr>
                   
                        
                    </tr>
                      <tr>
                        <td >
                           ME11
                        </td>
                        <td>
                             <%=me11%>
                        </td>
                      
                    </tr>
                   
                        
                    </tr>
                      <tr>
                        <td >
                           ME21
                        </td>
                        <td>
                             <%=me21%>
                        </td>
                      
                    </tr>
                   
                        
                    </tr>
                      <tr>
                        <td >
                           ME31
                        </td>
                        <td>
                             <%=me31%>
                        </td>
                      
                    </tr>
                   
                        
                    </tr>
                      <tr>
                        <td >
                           ME41
                        </td>
                        <td>
                             <%=me41%>
                        </td>
                      
                    </tr>
                   
                        
                    </tr>
                      <tr>
                        <td >
                           MO11
                        </td>
                        <td>
                             <%=mo11%>
                        </td>
                      
                    </tr>
                   
                        
                    </tr>
                      <tr>
                        <td >
                           MO21
                        </td>
                        <td>
                             <%=mo21%>
                        </td>
                      
                    </tr>
                   
                        
                    </tr>
                      <tr>
                        <td >
                           MO31
                        </td>
                        <td>
                             <%=mo31%>
                        </td>
                      
                    </tr>
                   
                        
                    </tr>
                      <tr>
                        <td >
                           MO41
                        </td>
                        <td>
                             <%=ds%>
                        </td>
                      
                    </tr>
                   
                        
                    </tr>
                      <tr>
                        <td >
                           EMF1
                        </td>
                        <td>
                             <%=emf1%>
                        </td>
                      
                    </tr>
                   
                        
                    </tr>
                      <tr>
                        <td >
                          VLS1
                        </td>
                        <td>
                             <%=vls1%>
                        </td>
                      
                    </tr>
                   
                        
                    </tr>
                      <tr>
                        <td >
                           EMB1
                        </td>
                        <td>
                             <%=emb1%>
                        </td>
                      
                    </tr>
                   
                        
                    </tr>
                      <tr>
                        <td >
                           DC1
                        </td>
                        <td>
                             <%=dc1%>
                        </td>
                      
                    </tr>
                   
                        
                    </tr>
                      <tr>
                        <td >
                           EE11
                        </td>
                        <td>
                             <%=ee11%>
                        </td>
                      
                    </tr>
                   
                        
                    </tr>
                      <tr>
                        <td >
                           EE21
                        </td>
                        <td>
                             <%=ee21%>
                        </td>
                      
                    </tr>
                   
                        
                    </tr>
                      <tr>
                        <td >
                           EE31
                        </td>
                        <td>
                             <%=ee31%>
                        </td>
                      
                    </tr>
                   
                        
                    </tr>
                      <tr>
                        <td >
                           EE41
                        </td>
                        <td>
                             <%=ee41%>
                        </td>
                      
                    </tr>
                   
                        
                    </tr>
                      <tr>
                        <td >
                           EO11
                        </td>
                        <td>
                             <%=eo11%>
                        </td>
                      
                    </tr>
                   
                        
                    </tr>
                      <tr>
                        <td >
                           EO21
                        </td>
                        <td>
                             <%=eo21%>
                        </td>
                      
                    </tr>
                   
                        
                    </tr>
                      <tr>
                        <td >
                           EO31
                        </td>
                        <td>
                             <%=eo31%>
                        </td>
                      
                    </tr>
                   
                        
                    </tr>
                      <tr>
                        <td >
                           EO41
                        </td>
                        <td>
                             <%=eo41%>
                        </td>
                      
                    </tr>
                   
                    
                    
                </table>
            </div>
                                                   
                        <a href="displaysub.jsp" class="btn"> Admin </a></br>
     
       <a href="timeslotdept.jsp" class="btn"> Time Table </a></nav>
						
					</header>
					<!-- Related demos -->
                                    		<section class="related">
					
					</section>
				</div>
			</div><!-- /content-wrap -->
		</div><!-- /container -->
		<script src="js/classie.js"></script>
		<script src="js/main.js"></script>
	</body>
</html>

