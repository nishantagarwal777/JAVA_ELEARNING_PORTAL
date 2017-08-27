<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page import = "java.sql.*"%>
<%@ page import = "java.io.*"%>
<html>
<body bgcolor="#faeafd">
<%
try
{
	String email_id=request.getParameter("email_id");
	String password=request.getParameter("password");
	session.setAttribute("email_id",String.valueOf(email_id));
	int flag=0;
	
    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
    Connection con = DriverManager.getConnection("jdbc:odbc:my_database");

    Statement st=con.createStatement();

	ResultSet search = st.executeQuery( "select * from User_Information where Email_Id='"+email_id+"'");
	
	while (search.next())
	{
	   flag=1;
	}
	if(flag==0)
	{
	%>
	<br /><br /><br /><br />
	<font face="Lucida Handwriting" size="6px" color="#003300"><b>No such email id exists in our database. Try Again ?</b></font><br />
	<a href ="Log In.jsp"><img alt="Return Back" src="../../Pictures/bac_reg.gif"  height="50px" width="80px" border='0' /></a>
	
	<%
	}
	else if(email_id.equals("admin@gmail.com"))
	{
		response.sendRedirect("admin_index.jsp");	
	}
	else
	{
		response.sendRedirect("home.jsp");	

	}
    
    st.close();
    con.close();

    

}
catch(Exception e)
{
  e.printStackTrace();
  out.println("exception occured"+e);
}
%>
</body>
</html>