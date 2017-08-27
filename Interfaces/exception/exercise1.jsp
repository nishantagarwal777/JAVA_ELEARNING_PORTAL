<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head >
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Exercise</title>
<script type="text/javascript" language="JavaScript" src="../../imageSwap.js">
</script>
<script>
function changeLink()
{
	if(document.getElementById("radio1").checked==true)
		document.getElementById("mylink").href="The StringBuffer Class.html";
	else
		document.getElementById("mylink").href="Immutable Class Creation.html";
}
</script>
<!--<link rel="SHORTCUT ICON" href="favicon.ico"/> -->
<link rel="stylesheet" href="../../LinksForChapters.css" type="text/css" />
</link>
</head>
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
									<p align="right"><a href="../ChangePassword-Copy.html"  onmouseover="imageSwapOnMouseOver(Image6,11)" onMouseOut="imageSwapOnMouseOut(Image6,10)"><img src="../../Pictures/change password.png" alt="Image Not Found" name="Image6" width="200" height="20" border="0" id="Image6"  title="Change your password"/></a> <a href="../Log In.html"  onmouseover="imageSwapOnMouseOver(Image1,0)" onMouseOut="imageSwapOnMouseOut(Image1,5)"><img src="../../Pictures/logout.png" alt="Image Not Found" name="Image1" width="101" height="20" border="0" id="Image1"  title="Log out from the site"/></a></p>
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
									<a href="../Home Page.html" onMouseOver="imageSwapOnMouseOver(Image2,1)" onMouseOut="imageSwapOnMouseOut(Image2,6)"><img src="../../Pictures/home - Copy.png" alt="Image Not Found" name="Image2" width="99" height="21" border="0" id="Image2"  title="Go back to Home Page"/></a> <a href="../Basics Of Java/What is Java.html" onMouseOver="imageSwapOnMouseOver(Image3,2)" onMouseOut="imageSwapOnMouseOut(Image3,7)"><img src="../../Pictures/java tutorial.png" alt="Image Not Found" name="Image3" width="190" height="21" border="0" id="Image3" title="Go to the tutorial" /></a> <a href="../Self-Assessment Test.html" onMouseOver="imageSwapOnMouseOver(Image4,3)" onMouseOut="imageSwapOnMouseOut(Image4,8)"><img src="../../Pictures/self-assessment test.png" alt="Image Not Found" name="Image4" width="349" height="21" border="0" id="Image4"  title="Take an assessment test to judge your knowledge"/></a> <a href="../Result Analysis.html" onMouseOver="imageSwapOnMouseOver(Image5,4)" onMouseOut="imageSwapOnMouseOut(Image5,9)"><img src="../../Pictures/history of result.png" alt="Image Not Found" name="Image5" width="265" height="21" border="0" id="Image5"  title="See the result of the previous examinations taken by you"/></a>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td>
						<table width="950" border="0">
							<tr>
								<td class="index1" width="160">
									<div id="leftmenu"> <a href="../Basics Of Java/What is Java.html">Basics Of Java</a> <br />
										<a href="#"> Overview of OOP </a> <br />
										<a href="#"> Declarations </a> <br />
										<a href="#"> Operators </a> <br />
										<a href="#"> Control Statement </a> <br />
										<a href="../Classes and Methods- Classes.html"> Classes and Methods </a> <br />
										<a href="#"> Inheritance </a> <br />
										<a href="#"> Exception Handling </a> <br />
										<a href="#"> Multithreading </a> <br />									
										<a href="The String Class.html"> String Handling </a> <br />
										<div id="leftmenu2"> <a href="The String Class.html"> The String Class </a> <br />
											<a href="Immutability.html"> Immutability </a> <br />
											<a href="String Concatenation.html"> String Concatenation </a> <br />
											<a href="String Comparison.html"> String Comparison </a> <br />
											<a href="Important Methods.html"> Important Methods </a> <br />
											<a href="The StringBuffer Class.html"> The StringBuffer Class </a> <br />
											<a href="The StringBuilder Class.html"> The StringBuilder Class </a> <br />
											<a href="Immutable Class Creation.html"> Immutable Class <br />Creation</a> <br />
											<a href="Point To Be Noted.html"> Point To Be Noted </a> <br />
											<a href="#"> Exercise </a> <br />
											</br>
										</div>
										<a href="#"> Inner Class </a><br />
										<a href="#">New Features</a> <br />
									</div>
									</td>
									<td class="body1" width="*">
									<!--style="background-color:#EBEBEB;"-->
									<span class="header1" >
									<center>
										String Handling
									</center>
									</span> </br><span class="header2">Exercise</span>
									<ul class="list-tick">
										<li>Read this piece of code carefully
											<div class="codeblock">
												<pre class="code1"> 1. 	What will be the output of the program?
public class Foo 
{  
    public static void main(String[] args) 
    {
        try 
        { 
            return; 
        } 
        finally 
        {
            System.out.println( "Finally" ); 
        } 
    } 
}
</pre></div><br />
									<input name="radiobutton" type="radio" id="radio1" value="Option1" checked="checked">
										The code will compile a print “Equal”.
									</input><br />
									<input name="radiobutton" type="radio" id="radio2" value="Option2">
										The code will compile a print “Not Equal”.
									</input><br />
									<input name="radiobutton" type="radio" id="radio3" value="Option3">
										The code will cause a compiler error.
									</input><br /><br />
									<div>
									<a class="next" id="mylink" href="#" onclick="changeLink()" >SUBMIT</a>
									</div>
									</li>	
									</ul></br>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</td>
		<td width='*'>&nbsp;</td>
	</tr>
</table>
</body>
</html>
