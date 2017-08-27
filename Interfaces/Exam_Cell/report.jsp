<%@page import="com.sun.java.swing.plaf.windows.resources.windows_es"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
<%@ page language="java" %>
<%@ page import ="java.sql.*" %>
<%@ page import="java.util.*"%>
<%@ page session="true" %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exam Report</title>
	
		<script>
var actualchoices=new Array();
	
function gradeit(){

for (q=1;q<=5;q++){
	var thequestion=document.getElementsByName("opt"+q);
	for (c=0;c<thequestion.length;c++){
		if (thequestion[c].checked==true)
		actualchoices[q]=thequestion[c].value
		
		else
		(actualchoices[q]=-999);
		
		}
	}
	//var url="report.jsp?cans="+actualchoices[q];
}

</script>
<script>
function showDate(){
var datetime= new Date();

var dateonly=datetime.getDate();
var dateyear=datetime.getFullYear();
var datemonth=datetime.getMonth();
var hours=(datetime.getHours());
var minutes=(datetime.getMinutes());
var seconds=(datetime.getSeconds());
var daytime="AM"; 
if (hours>12) {
daytime="PM";
hours=hours-12;
}
if(hours==12)
daytime="PM"
var totaltime=dateonly+"/"+datemonth+"/"+dateyear+" "+hours+":"+minutes+":"+seconds+" "+daytime;
//window.location="savedata.jsp?val="+totaltime;
document.cookie=totaltime;

}

</script>
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
<SCRIPT type="text/javascript">
    window.history.forward();
    function noBack() { window.history.forward(); }
</SCRIPT>
<script>
function disablebtn(){
	document.getElementById("resultshistory").disabled=true;
}
</script>
<script>
function validateform(obj){
	//obj.viewsolution.disabled=true;
	document.getElementById("resultshistory").disabled=true;
	return true;
}
</script>
</head>
    <body bgcolor="#faeafd" onLoad="noBack();"
    onpageshow="if (event.persisted) noBack();" onunload="">
        <center><h1>Your Report Card</h1></center>
<%
try {
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:db2");
String tablename=(String)session.getAttribute("tablename");
PreparedStatement ps1=con.prepareStatement("select * from "+tablename);
ResultSet rs=ps1.executeQuery();
String s1,s2,s3,s4;
int i=1,j=1;
int correct=0,incorrect=0,total=0,unattempted=0;
double marks=0;
//String coans=request.getParameter("cans");
out.println("<h2><br><br><center><table border=1 cellpadding=2 cellspacing=2><tr><th>Question</th><th>Your Answer</th><th>Correct Answer</th><th>Status</th></tr>");
while(rs.next())
{
total++;
s1 = rs.getString(1);
s3 = rs.getString(6);
s2 =(String)request.getParameter("opt"+i);

if(s3.equals(s2))

{
    s4="Correct";
    correct++;
	
}
else
if(!(s3.equals(s2)) && s2!=null)
{
     s4="Incorrect";
    incorrect++;
	
} 
else
{	s4="Unanswered";
	unattempted++;
	s2="NotAnswered";
}

//if(s2==null){
out.println("<tr><td><a href='questionview.jsp?question="+total+"' target='_blank' title='click to view question'>"+total+"</a></td><td>"+s2+"&nbsp;</td><td>"+s3+"</td><td>"+s4+"</td></tr>");
//else
//out.println("<tr><td>"+s1+"</td>"+s2+"</td><td>"+s3+"</td><td>"+s4+"</td></tr>");
i++;
j++;
}
marks=correct-(incorrect*0.5);
out.println("</table><br><br><table><b><tr><td>Correct Answers</td><td>"+correct+"</td></tr>");
out.println("<tr><td>Incorrect Answers</td><td>"+incorrect+"</td></tr>");
out.println("<tr><td>Not Answered</td><td>"+unattempted+"</td></tr>");
out.println("<tr><td>Marks Obtained</td><td>"+marks+"</td></tr></table></b></center></h2>");

session.setAttribute("qcorrect",correct);
session.setAttribute("qincorrect",incorrect);
session.setAttribute("qunattempted",unattempted);
session.setAttribute("totalmarks",marks);
con.close();
}
  catch(Exception e)
	
	{e.printStackTrace();}	
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
<form action="previousresults.jsp" name="view" method="post" onsubmit="return validateform(this)" >
<div align="center"><input type="submit" id="resultshistory" name="viewsolution" value="view previous results"/></div>
<div align="center"><input type="button" value="Exit" onclick="window.location='logout.jsp'"/></div>
</form>
      
    </body>
</html>
