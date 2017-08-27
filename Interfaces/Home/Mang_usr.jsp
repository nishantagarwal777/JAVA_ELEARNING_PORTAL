<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page import="java.sql.*" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body bgcolor="#FFCCCC">
<center>
    
    <b><font face="Lucida Handwriting" color="000000" size=4> User Details from Database</font></b></center>
    
    <hr color='red' width='60%' size='2'></hr><br>
    <% 
	     
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
    	Connection con = DriverManager.getConnection("jdbc:odbc:my_database");
		Statement st=con.createStatement();
            ResultSet rs = st.executeQuery("select * from User_Information");
            int cntr=0;
		
		
            String f_name=null,l_name=null,sex=null,dob=null,mobile=null,email=null;
     %>
   <table align="center" border="2" width="650" bordercolorlight="#FFFFFF" cellspacing="3" cellpadding="3">
	
    <th><font face="Verdana" color="DarkBlue" size=2><b>First Name</b></font></th>
 	<th><font face="Verdana" color="DarkBlue" size=2><b>Last Name</b></font></th>
 	<th><font face="Verdana" color="DarkBlue" size=2><b>Sex</b></font></th>
	
	<th><font face="Verdana" color="DarkBlue" size=2><b>Mobile</b></font></th>
	<th><font face="Verdana" color="DarkBlue" size=2><b>Email</b></font></th>
   <% 
	while(rs.next()) 
	{ 
	
		f_name=rs.getString(2);
		l_name=rs.getString(3);
		sex=rs.getString(4);
		mobile=rs.getString(7);
		email=rs.getString(5);
	%>
       	    <tr>
             		
		<td align="center"><font face="Verdana" color="Black" size=2><%= f_name  %></font></td>
		<td align="center"><font face="Verdana" color="Black" size=2><%= l_name %></font></td>
		<td align="center"><font face="Verdana" color="Black" size=2><%= sex %></font></td> 
		
		<td align="center"><font face="Verdana" color="Black" size=2><%= mobile %></font></td>
		<td align="center"><font face="Verdana" color="Black" size=2><%= email %></font></td> 
        	    </tr>
    <%
	    cntr++;
	}   
	con.close(); 
    %>
	<td colspan="6" align="center">
  
   <%
	if(cntr==0)
	   out.println("<font face='Verdana' color='red' size=2><b> No Records Found in the Database</b></font>");
	else if (cntr==1)
	   out.println("<font face='Verdana' color='darkblue' size=2><b> Total "+cntr+" Record Found in the Database</b></font>");
	else
	   out.println("<font face='Verdana' color='darkblue' size=2><b> Total "+cntr+" Records Found in the Database</b></font>");
    %>
   </td>
	</table>
</body>
</html>
