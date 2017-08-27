<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="org.omg.CORBA.PUBLIC_MEMBER"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@ page session="true" %>
<html>
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
<body onLoad="noBack();"
    onpageshow="if (event.persisted) noBack();" onUnload="" oncontextmenu="return false">
<%
response.setHeader("Cache-Control","no-store"); 
response.setHeader("Pragma","no-cache"); 
response.setDateHeader ("Expires", 0);


String username=null,userpass=null;

username= request.getParameter("txt_reg");
userpass = request.getParameter("txt_name");

session.setAttribute("user",String.valueOf(username));
//boolean status=false;
try{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:my_database");
PreparedStatement ps=con.prepareStatement("select * from User_Information where Email_Id=? and Password=?");
ps.setString(1,username);
ps.setString(2,userpass);

ResultSet rs=ps.executeQuery();
//status=rs.next();
if(rs.next()){
username=rs.getString(5);
userpass=rs.getString(6);
session.setAttribute("username",String.valueOf(username));
session.setAttribute("userpass",String.valueOf(userpass));
%>
<script>
window.open('exam.jsp','_blank','fullscreen=yes,resizable=yes,scrollbars=yes,toolbar=no,menubar=no');
window.open('return.jsp','_self');
</script>

<%

}


else{
//JOptionPane.showMessageDialog(null,"username or password incorrect");
%>

<jsp:forward page="index.jsp"></jsp:forward>
<%
}
}

catch(Exception e){
e.printStackTrace();
}

%>
</body>
</html>
