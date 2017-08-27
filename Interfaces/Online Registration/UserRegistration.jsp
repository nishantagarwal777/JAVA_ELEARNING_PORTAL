<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page import = "java.sql.*"%>
<%@ page import = "java.io.*"%>

<%
try
{ 
    String fname=request.getParameter("textfield0");
	String lname=request.getParameter("textfield1");
	String gender=request.getParameter("radiobutton");
	String emailId=request.getParameter("textfield2");
	String password=request.getParameter("textfield4");
	String tel=request.getParameter("textfield6");
    
    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
    Connection con = DriverManager.getConnection("jdbc:odbc:my_database");

    Statement st=con.createStatement();
	
	ResultSet retrive = st.executeQuery("select * from User_Information where Email_Id='"+emailId+"'");
	
	int flag=0;
	
	while(retrive.next()) 
	{
		
		flag=1;	
	}
	
	if(flag==1)
	{
	%>
	<br /><br /><br /><br />
	<font face="Lucida Handwriting" size="6px" color="#003300"><b>This email id is already registered with our site .Log in and enjoy our site or register with some other email id.</b></font><br />
	<a href ="OnlineRegistration.jsp"><img alt="Return Back" src="../../Pictures/bac_reg.gif"  height="50px" width="80px" border='0' /></a>
	<%
	}
	else
	{
    st.executeUpdate("insert into User_Information(First_Name,Last_Name,Gender,Email_Id,Password,Telephone) values('"+fname+"','"+lname+"','"+gender+"','"+emailId+"','"+password+"','"+tel+"' )");
   
%>
	<br /><br /><br /><br />
	<font face="Lucida Handwriting" size="6px" color="#003300"><b>Your account has been created. Log in and have fun learning Java.</b></font><br />
	
	
<%}
    
    st.close();
    con.close();

    

}
catch(Exception e)
{
  e.printStackTrace();
  out.println("exception occured"+e);
}
%>
