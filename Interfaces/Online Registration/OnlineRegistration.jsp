<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Registration</title>
<link rel="stylesheet" href="../../LinksForChapters.css" type="text/css" />
<script type="text/javascript" language="JavaScript" src="../../imageSwap.js">
</script>
<script type="text/javascript">

function validationCheck()
{
	field=new Array(7);
	for (loop = 0; loop < 7; loop++) 
		field[loop] = new Array(2);
	for(loop=0;loop<7;loop++){
			field[loop][0]="textfield"+loop;
			field[loop][1]="redAlert"+loop;
			/*document.getElementById("validation").innerHTML="loop="+loop+"value="+field[loop][0];*/
	}
	flag=0;

/*-----------------------------------------------------------------------------------------------------------	*/
	for(loop=0;loop<7;loop++)
	{
		if(document.getElementById(field[loop][0]).value=="") 
		{
			document.getElementById(field[loop][1]).innerHTML="<br />You can't leave this empty.";
			document.getElementById("break"+loop).innerHTML="";
			document.getElementById(field[loop][0]).style.height="26px";
			document.getElementById(field[loop][0]).size="35";
			document.getElementById(field[loop][0]).style.borderStyle="solid";
			document.getElementById(field[loop][0]).style.borderColor="#FF0000";
			document.getElementById(field[loop][0]).style.borderWidth="thin";
			flag=1;
		}
		else
		{
			document.getElementById(field[loop][1]).innerHTML="";
			document.getElementById("break"+loop).innerHTML="<br />";
			document.getElementById(field[loop][0]).style.height="26px";
			document.getElementById(field[loop][0]).size="35";
			document.getElementById(field[loop][0]).style.borderStyle="solid";
			document.getElementById(field[loop][0]).style.borderColor="#999";
			document.getElementById(field[loop][0]).style.borderWidth="thin";
		}
	}
/*-----------------------------------------------------------------------------------------------------------	*/
	if(document.getElementById("textfield4").value!=document.getElementById("textfield5").value && document.getElementById("textfield4").value!="" && document.getElementById("textfield5").value!="")
	{
		document.getElementById("redAlert5").innerHTML="<br />These passwords don't match. Try again?";
		document.getElementById("break5").innerHTML="";
		document.getElementById("textfield5").style.borderColor="#FF0000";
		flag=1;
	}
	if(document.getElementById("textfield2").value!=document.getElementById("textfield3").value && document.getElementById("textfield2").value!="" && document.getElementById("textfield3").value!="")
	{
		document.getElementById("redAlert3").innerHTML="<br />These email ids don't match. Try again?";
		document.getElementById("break3").innerHTML="";
		document.getElementById("textfield3").style.borderColor="#FF0000";
		flag=1;
	}
/*-----------------------------------------------------------------------------------------------------------	*/	
	if(document.getElementById("textfield4").value==document.getElementById("textfield2").value && document.getElementById("textfield4").value!="")
	{
		document.getElementById("redAlert4").innerHTML="<br />Don't use your email id as your password.";
		document.getElementById("break4").innerHTML="";
		document.getElementById("textfield4").style.borderColor="#FF0000";
		flag=1;
	}
	if(document.getElementById("textfield4").value==document.getElementById("textfield1").value && document.getElementById("textfield4").value!="")
	{
		document.getElementById("redAlert4").innerHTML="<br />Don't use your last name as your password.";
		document.getElementById("break4").innerHTML="";
		document.getElementById("textfield4").style.borderColor="#FF0000";
		flag=1;
	}
	if(document.getElementById("textfield4").value==document.getElementById("textfield0").value && document.getElementById("textfield4").value!="")
	{
		document.getElementById("redAlert4").innerHTML="<br />Don't use your first name as your password.";
		document.getElementById("break4").innerHTML="";
		document.getElementById("textfield4").style.borderColor="#FF0000";
		flag=1;
	}
/*-----------------------------------------------------------------------------------------------------------	*/	
	if(document.getElementById("textfield4").value.length<8 && document.getElementById("textfield4").value!="")
	{
		document.getElementById("redAlert4").innerHTML="<br />Short passwords are easy to guess. Try one with at least 8 characters.";
		document.getElementById("break4").innerHTML="";
		document.getElementById("textfield4").style.borderColor="#FF0000";
		flag=1;
	}
/*-----------------------------------------------------------------------------------------------------------	*/	
	if(isNaN(document.getElementById("textfield6").value)||document.getElementById("textfield6").value.length!=10)
	{
		document.getElementById("redAlert6").innerHTML="<br />Mobile no should be a 10 digit no . Try again?";
		document.getElementById("break6").innerHTML="";
		document.getElementById("textfield6").style.borderColor="#FF0000";
		flag=1;
	}
	
	flag1=0;
	temp=document.getElementById("captcha").src;
	text=document.getElementById("text1").value;
	if(text=="")
	{
		document.getElementById("msg").innerHTML="<br />You can't leave this empty.";
		document.getElementById("text1").style.borderStyle="solid";
		document.getElementById("text1").style.borderColor="#FF0000";
		document.getElementById("text1").style.borderWidth="thin";
		
		flag1=1;
	}
	else
	{
		for(loop=0;loop<4;loop++)
			if(temp==captcha[loop][0].src)
				break;
				
		if(temp==captcha[loop][0].src && text==captcha[loop][1])
		{
			document.getElementById("msg").innerHTML="";
			document.getElementById("text1").style.borderStyle="solid";
			document.getElementById("text1").style.borderColor="#999";
			document.getElementById("text1").style.borderWidth="thin";
		}	
		else
		{
			document.getElementById("msg").innerHTML="<br />Text doesn't match the captcha image. Try again?";
			document.getElementById("text1").style.borderStyle="solid";
			document.getElementById("text1").style.borderColor="#FF0000";
			document.getElementById("text1").style.borderWidth="thin";
			flag1=1;
		}
	}
	
	email=document.getElementById("textfield2").value;
	atpos=email.indexOf("@");
	dotpos=email.lastIndexOf(".");
	if (atpos<1 || dotpos<atpos+2 || dotpos+2>=email.length)
	{
		document.getElementById("redAlert2").innerHTML="<br />Email id entered is not valid. Try again?";
		document.getElementById("break2").innerHTML="";
		document.getElementById("textfield2").style.borderColor="#FF0000";
		flag=1;
	}
	
	if(flag==1 && flag1==0)
	{
		random = captcha[Math.floor(Math.random() * captcha.length)][0].src;
		document.getElementById("captcha").src=random;
		document.getElementById("text1").value="";	
		document.getElementById("msg").innerHTML="";
		document.getElementById("text1").style.borderStyle="solid";
		document.getElementById("text1").style.borderColor="#999";
		document.getElementById("text1").style.borderWidth="thin";

		return false;
	}
	if(flag1==1)
	{
		random = captcha[Math.floor(Math.random() * captcha.length)][0].src;
		document.getElementById("captcha").src=random;
		document.getElementById("text1").value="";	
		return false;	
	}
}

function myRandom()
{
	captcha=new Array(4);
	for (loop = 0; loop < 4; loop++) 
		captcha[loop] = new Array(2);
	for(loop=0;loop<4;loop++)
			captcha[loop][0]=new Image();
	captcha[0][0].src="captcha1.bmp";
	captcha[0][1]="28ivw";
	captcha[1][0].src="captcha2.bmp";
	captcha[1][1]="k4ez";
	captcha[2][0].src="captcha3.bmp";
	captcha[2][1]="jw62k";
	captcha[3][0].src="captcha4.bmp";
	captcha[3][1]="FH2DE";
	random = captcha[Math.floor(Math.random() * captcha.length)][0].src;
	document.getElementById("captcha").src=random;
}
</script>
<!--<link rel="SHORTCUT ICON" href="favicon.ico"/> -->
</link>
</head>
<body bgcolor="#faeafd" onload="myRandom()">
<table width="350" border="0">
						<tr><td width='*'>&nbsp;</td>
						<td width="350">
							<form id="form1" name="form1" method="post" action="UserRegistration.jsp" >
										<fieldset>
										<!--<span id="validation">ghg</span>-->
										<legend><b>Sign Up </b></legend>								
											
											<label style="color:#330033; font-weight:bolder; font-size:16px; line-height:150%">First Name<br /></label>
											<input style="height:24px;" name="textfield0" id="textfield0" type="text" size="35"  title="Enter your first name here."/>
											<span id="redAlert0" style="color:#FF0000; line-height:150%;"></span>																				
											<br />
											<span id="break0"><br /></span>
											
											<label  style="color:#330033; font-weight:bolder; font-size:16px; line-height:150%">Last Name <br /></label>
											<input style="height:24px;" name="textfield1" id="textfield1" type="text" size="35"  title="Enter your last name here."/>
											<span id="redAlert1" style="color:#FF0000; line-height:150%;"></span>	
											<br />
											<span id="break1"><br /></span>																			
											
											<label style="color:#330033; font-weight:bolder; font-size:16px; line-height:150%">Gender<br /></label>											
											<input name="radiobutton" id="textfield" type="radio" value="male" title="Male" checked="checked" >
											Male
											</input>
											<input name="radiobutton" id="textfield" type="radio" value="female" title="Female">
											Female
											</input>												
											<br /><br />											
											
											<label style="color:#330033; font-weight:bolder; font-size:16px; line-height:150%">Email Id<br /></label>
											<input style="height:24px;" name="textfield2" id="textfield2" type="text" size="35" title="Enter your email id here."/>	
											<span id="redAlert2" style="color:#FF0000; line-height:150%;"></span>	
											<br />
											<span id="break2"><br /></span>																			
											
											<label style="color:#330033; font-weight:bolder; font-size:16px; line-height:150%">Confirm your Email Id<br /></label>
											<input style="height:24px;" name="textfield3" id="textfield3" type="text" size="35" title="Confirm your email id here."/>	
											<span id="redAlert3" style="color:#FF0000; line-height:150%;"></span>	
											<br />
											<span id="break3"><br /></span>																			

											<label style="color:#330033; font-weight:bolder; font-size:16px; line-height:150%">Password<br /></label>
											<input name="textfield4" type="password" id="textfield4" style="height:24px;" title="Enter your password here." size="35"/>	
											<span id="redAlert4" style="color:#FF0000; line-height:150%;"></span>	
											<br />
											<span id="break4"><br /></span>																			
																	
											<label style="color:#330033; font-weight:bolder; font-size:16px; line-height:150%">Confirm Password<br /></label>
											<input name="textfield5" type="password" id="textfield5" style="height:24px;" title="Confirm your password here." size="35"/>	
											<span id="redAlert5" style="color:#FF0000; line-height:150%;"></span>	
											<br />
											<span id="break5"><br /></span>																																																		
											
											<label style="color:#330033; font-weight:bolder; font-size:16px; line-height:150%">Mobile No<br /></label>
											<input style="height:24px;" name="textfield6" id="textfield6" type="text" size="35" title="Enter your telephone number. Format: 0123456789"/>	
											<span id="redAlert6" style="color:#FF0000; line-height:150%;"></span>	
											<br />
											<span id="break6"><br /></span>	
																						
											<div><img width="100" height="50" id="captcha"/></div><br />
											<input style="height:24px;" id="text1" type="text" size="35"/>
											<span style="color:#FF0000; line-height:150%;" id="msg"></span>																						
																													
											<p align="center">
											<input type="image" src="../../Pictures/submit_button.gif" width="130" height="70" name="submit" onclick=" return validationCheck();" />
											<!--<input name="Button1" type="button" onclick="validationCheck()" value="Register"/>-->
											</p>										
											</fieldset>
									</form>
									</td>
									<td width='*'>&nbsp;</td></tr>
						</table>
</body>
</html>
