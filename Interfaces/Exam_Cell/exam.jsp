<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Examination Panel</title>
		<style>
		.codeblock {
	margin:5px 0px 10px 0px;
	background: #f1f5de;	
	font-family: verdana;	
	font-size:16px;
	padding: 0px 0px 0px 0px;
	border: 1px solid #d5ddc6;
	//border: 15px solid #d4d8d4;	
    -moz-box-shadow: 8px 3px 10px #d4d4d4;
    -webkit-box-shadow: 8px 3px 10px #d4d4d4;
    box-shadow: 5px 3px 10px #d4d4d4;
}
</style>
    </head>
    
        <%@ page language="java" %>
<%@ page import ="java.sql.*" %>
<%@ page session="true" %>
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
<script type="text/javascript">

var mins=5;
function countdown(secs,elem){
	
	secs--;
	if(secs<0){
		secs=59;
		mins=mins-1;
	}
	else{
		mins=mins;
	}
	if(mins<0){
		clearTimeout(timer);
		alert("time expired");
		document.exam.submit();
	}
	
	
	var element=document.getElementById(elem);
	var time =(mins<=9 ? "0" + mins : mins)+ " : " + (secs<=9? "0"+secs:secs) ;
	
	element.innerHTML="<b>TIME LEFT=</b>" + time;
	
	var timer=setTimeout('countdown('+secs+',"'+elem+'")',1000);
}
</script>
<SCRIPT type="text/javascript">
    window.history.forward();
    function noBack() { window.history.forward(); }
</SCRIPT>
<BODY onload="noBack();"
    onpageshow="if (event.persisted) noBack();" onunload="" oncontextmenu="return false" bgcolor="#faeafd">
<div id="status" align="right" style="overflow:hidden;position:fixed;left:950px"></div>
<script type="text/javascript">countdown(0,"status")</script>
<%
response.setHeader("Cache-Control","no-store"); 
response.setHeader("Pragma","no-cache"); 
response.setDateHeader ("Expires", 0);
String name=(String)session.getAttribute("username");
out.println("<div style='overflow:auto'>");
out.println("<h2>Welcome" +"  "+ name + "!!</h2><br><br><br>");
try {
String table[]={"quizques","quizques1","quizques2","quizques3"};
int lower=0;
int higher=4;
int value=(int)(Math.random()*4);
String tablename=table[value];
session.setAttribute("tablename",tablename);
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:db2");

PreparedStatement ps1=con.prepareStatement("select * from "+tablename);
ResultSet rs=ps1.executeQuery();
String s1,s2,s3,s4;
int i=1;
while(rs.next())
{

out.println("<form name='exam' action='report.jsp' method='post'><b><div class='codeblock'>"+i+" . " + "<pre>"+rs.getString(1)+"<br>"+rs.getString(8)+"<br>"+rs.getString(9)+"</pre></b><br></div>");
s1 = rs.getString(2);
s2 = rs.getString(3);
s3 = rs.getString(4);
s4 = rs.getString(5);
out.println("<input type=radio name=opt"+i+" value='a'>"+ s1 +" <br><br>");
out.println("<input type=radio name=opt"+i+" value='b'>"+ s2 +"<br><br>");
out.println("<input type=radio name=opt"+i+" value='c'>"+ s3 +"<br><br>");
out.println("<input type=radio name=opt"+i+" value='d'>"+ s4 +"<br><br>");
i++;
}
out.println("<div align='center'><input name ='sub' value='Submit' type='submit'/></div>");
out.println("</div>");
}
catch(Exception e)
	
	{e.printStackTrace();}	
%>
        
    </body>
</html>
