<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>History Of Java</title>
<script type="text/javascript" language="JavaScript" src="../../imageSwap.js">
</script>
<link rel="stylesheet" href="../../LinksForChapters.css" type="text/css" />
</link>
</head>
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
				<td>
				<table width="950" border="0" height="100%">
				<tr>
				<td width="*"></td>
		<td width='50px'>
			<form id="form1" name="form1" method="post" action="Change_Password_db.jsp">
			<fieldset>
				<legend><b>Change Password</b></legend>
				<p>
				<input name="email_id" type="hidden" value="<%=email_id%>" />
				<label>Enter Old Password<br />
				<input name="old_password" type="password" size="35" />
				</label>
				</p>
				<p>
				<label>Enter New Password<br />
				<input name="new_password" type="password" size="35" />
				</label>
				</p>
				<p>
				<label>Confirm New Password<br />
				<input name="c_password" type="password" size="35" />
				</label>
				</p>
				<p align="center">
				<label>
				<input type="submit" name="Submit" value="Submit" />
				</label>
				</p>
			</fieldset>
			</form>
		</td>
		<td width="*"></td>
	</tr>
</table>
</td></tr></table>
</td>
<td width="*">&nbsp;</td>
</tr></table>
</body>
</html>
