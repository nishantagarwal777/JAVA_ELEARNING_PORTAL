<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ page import="java.util.*"%>
<%@ page session="true" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Previous Results</title>
<script language="javascript">
document.onmousedown=disableclick;
status="Right Click Disabled";
function disableclick(e)
{
  if(event.button==2)
   {
     alert(status);
     return false;    
   }
}
</script>
<script language="javascript" type="text/javascript">
    document.onkeydown = checkKeycode
    function checkKeycode(e) {
        var keycode;
        if (window.event)
            keycode = window.event.keyCode;
        else if (e)
            keycode = e.which;

       
           if (keycode == 116 || (window.event.ctrlKey && keycode == 82)) {
                window.event.returnValue = false;
                window.event.keyCode = 0;
                window.status = "Refresh is disabled";
            }
        
    }
</script>

</head>

<body bgcolor="#faeafd">
<center><h1>Results History</h1></center>
<%
try {
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:db2");
String user=(String)session.getAttribute("email_id");
PreparedStatement ps1=con.prepareStatement("select * from userdetails where username=?");
ps1.setString(1,user);
ResultSet rs=ps1.executeQuery();
out.println("<h2><br><br><center><table border=1 cellpadding=2 cellspacing=2><tr><th>Username</th><th>No Of question correct</th><th>No Of question incorrect</th><th>No Of question unattempted</th><th>Total Marks Obtained</th><th>Date</th></tr>");
while(rs.next())
{
	String uname=rs.getString(1);
	int qcorrect=rs.getInt(2);
	int qincorrect=rs.getInt(3);
	int qunanswered=rs.getInt(4);
	double qtotal=rs.getDouble(5);
	String dateexam=rs.getString(6);
	out.println("<tr><td>"+uname+"</td><td>"+qcorrect+"</td><td>"+qincorrect+"</td><td>"+qunanswered+"</td><td>"+qtotal+"</td><td>"+dateexam+"</td></tr>");	


}

con.close();
out.println("</table><br><br>");
}
catch(Exception e)
	{e.printStackTrace();}	
%>
<div align='center'>
<form name='results' action='' method='post'>
<input type="button" value="Back" onclick="history.go(-2)"/>

</form>
</div>

</body>
</html>
