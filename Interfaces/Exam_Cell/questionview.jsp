<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ page language="java" %>
<%@ page import ="java.sql.*" %>
<%@ page session="true" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>View Question</title>
<script>
function changesize(w,h){
	window.resizeTo(w,h);
}
</script>


</head>

<body bgcolor="#faeafd" onload="changesize(300,300)">
<%
String question_no=request.getParameter("question");
out.print(question_no+")"+" ");
try {
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:db2");
String tablename=(String)session.getAttribute("tablename");	
PreparedStatement ps1=con.prepareStatement("select * from "+tablename+" where qid=?");
ps1.setString(1,question_no);
ResultSet rs=ps1.executeQuery();
rs.next();
out.println("<b><pre>"+rs.getString(1)+"<br>"+rs.getString(8)+"<br>"+rs.getString(9)+"</pre></b><br><br>");
String s1 = rs.getString(2);
String s2 = rs.getString(3);
String s3 = rs.getString(4);
String s4 = rs.getString(5);
out.println("<input type=radio name='opt' value="+s1+">"+ s1 +" <br><br>");
out.println("<input type=radio name='opt' value="+s2+">" + s2 +"<br><br>");
out.println("<input type=radio name='opt' value="+s3+">" + s3 +"<br><br>");
out.println("<input type=radio name='opt' value="+s4+">" + s4 +"<br><br>");
out.print("<form method='post'>");
out.print("<input type='button' value='Close Window' onclick='window.close()'>");
out.println("</form>");
con.close();
}

catch(Exception e)
	{e.printStackTrace();}	
	
%>
</body>
</html>
