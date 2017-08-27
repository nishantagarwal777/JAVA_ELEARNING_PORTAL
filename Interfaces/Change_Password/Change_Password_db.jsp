<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page import = "java.sql.*"%>
<%@ page import = "java.io.*"%>
<html>
<%
String email_id=(String)session.getAttribute("email_id");
%>
<body bgcolor="#faeafd">
 <table width="100%" border="0">
	<tr>
		<td width='*'>&nbsp;</td>
		<td width="950">
			<table width="950" height="100%" border="0">
				<tr height="80">
					<td>
						<table width="950" height="100%" border="0">
							<tr class="body1">
								<td width="37">&nbsp;</td>
								<td width="442"><img src="../../Pictures/logo.jpg" width="335" height="75" alt="Image Not Found" title="A tutorial which will make learning Java fun"/></td>
								<td width="471">
									<p align="right"><a href="../Change_Password/Change_Password.jsp"  onmouseover="imageSwapOnMouseOver(Image6,11)" onMouseOut="imageSwapOnMouseOut(Image6,10)"><img src="../../Pictures/change password.png" alt="Image Not Found" name="Image6" width="200" height="20" border="0" id="Image6"  title="Change your password"/></a> <a href="../Home/Log In.jsp"  onmouseover="imageSwapOnMouseOver(Image1,0)" onMouseOut="imageSwapOnMouseOut(Image1,5)"><img src="../../Pictures/logout.png" alt="Image Not Found" name="Image1" width="101" height="20" border="0" id="Image1"  title="Log out from the site"/></a></p>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr height="44">
					<td>
						<table width="950" border="0" height="100%">
							<tr class="body1">
								<td width="10">&nbsp;</td>
								<td width="940">
									<a href="../Home/home.jsp" onMouseOver="imageSwapOnMouseOver(Image2,1)" onMouseOut="imageSwapOnMouseOut(Image2,6)"><img src="../../Pictures/home - Copy.png" alt="Image Not Found" name="Image2" width="99" height="21" border="0" id="Image2"  title="Go back to Home Page"/></a> <a href="../Basics Of Java/What is Java.html" onMouseOver="imageSwapOnMouseOver(Image3,2)" onMouseOut="imageSwapOnMouseOut(Image3,7)"><img src="../../Pictures/java tutorial.png" alt="Image Not Found" name="Image3" width="190" height="21" border="0" id="Image3" title="Go to the tutorial" /></a> <a href="../Exam_Cell/index.jsp" onMouseOver="imageSwapOnMouseOver(Image4,3)" onMouseOut="imageSwapOnMouseOut(Image4,8)"><img src="../../Pictures/self-assessment test.png" alt="Image Not Found" name="Image4" width="349" height="21" border="0" id="Image4"  title="Take an assessment test to judge your knowledge"/></a> <a href="../Exam_Cell/previous_results_main.jsp" onMouseOver="imageSwapOnMouseOver(Image5,4)" onMouseOut="imageSwapOnMouseOut(Image5,9)"><img src="../../Pictures/history of result.png" alt="Image Not Found" name="Image5" width="265" height="21" border="0" id="Image5"  title="See the result of the previous examinations taken by you"/></a>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>

<%
try
{
	String old_password=request.getParameter("old_password");
	String new_password=request.getParameter("new_password");	
	String password=null;
	    
    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
    Connection con = DriverManager.getConnection("jdbc:odbc:my_database");

    Statement st=con.createStatement();
    ResultSet retrive = st.executeQuery("select * from User_Information where Email_Id='"+email_id+"'");
	
	while(retrive.next()) 
	{ 
		password=retrive.getString(6);
	}
   
   if(password.equals(old_password))
   {
   st.addBatch("update User_Information set Password='"+new_password+"' where Email_Id='"+email_id+"'");
   st.executeBatch();
   %>
  
		<td width='*'>
		<br /><br /><br /><br />
	<font face="Lucida Handwriting" size="6px" color="#003300"><b>Your password has been changed successfully .</b></font><br />
		</td>
	

   <%}
   else
   {%>
   
 <td width='*'>
		<br /><br /><br /><br />
	<font face="Lucida Handwriting" size="6px" color="#003300"><b>You have entered wrong password .Try again .</b></font><br />
		</td>
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
</tr>
</table>
</td>
<td width="*">&nbsp;</td>
</tr></table>
</body>
</html>