<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@ page session="true" %>
<html>
<head>
<!--<script>
window.onload=function(){
	var datecal=document.cookie;
	alert(datecal);
	window.location="savedata.jsp?val="+datecal;
}
	</script>
	!-->
	</head>
<body>


<%
 try {
 String username= (String)session.getAttribute("user");
int question_correct= (Integer)session.getAttribute("qcorrect");
int question_incorrect= (Integer)session.getAttribute("qincorrect");
int question_unanswered=(Integer)session.getAttribute("qunattempted");
double total_marks=(Double)session.getAttribute("totalmarks");
java.util.Date date1=new java.util.Date();
String date2=String.valueOf(date1);

//out.println(date);
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:db2");
PreparedStatement ps=con.prepareStatement("insert into userdetails values(?,?,?,?,?,?)");

ps.setString(1,username);
ps.setInt(2,question_correct);
ps.setInt(3,question_incorrect);
ps.setInt(4,question_unanswered);
ps.setDouble(5,total_marks);
ps.setString(6,date2);
int s= ps.executeUpdate();
con.close();
}
catch(Exception e){e.printStackTrace();}
%>
</body>
<jsp:forward page="previousresults.jsp"></jsp:forward>
</html>