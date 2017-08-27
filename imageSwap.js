if(document.images) {
pics = new Array();
pics[0] = new Image();
pics[0].src = "../../Pictures/logout - Copy.png";
pics[1] = new Image();
pics[1].src = "../../Pictures/home.png";
pics[2] = new Image();
pics[2].src = "../../Pictures/java tutorial - Copy.png" ;
pics[3] = new Image();
pics[3].src = "../../Pictures/self-assessment test - Copy.png";
pics[4] = new Image();
pics[4].src = "../../Pictures/history of result - Copy.png";
pics[5] = new Image();
pics[5].src = "../../Pictures/logout.png";
pics[6] = new Image();
pics[6].src = "../../Pictures/home - Copy.png";
pics[7] = new Image();
pics[7].src = "../../Pictures/java tutorial.png";
pics[8] = new Image();
pics[8].src = "../../Pictures/self-assessment test.png";
pics[9] = new Image();
pics[9].src = "../../Pictures/history of result.png" ;
pics[10] = new Image();
pics[10].src = "../../Pictures/change password.png"
pics[11] = new Image();
pics[11].src = "../../Pictures/change password - Copy.png" ;
}
function imageSwapOnMouseOver(image1,index)
{
	image1.src=pics[index].src ;
}
function imageSwapOnMouseOut(image1,index)
{
	image1.src=pics[index].src ;
}
function changeId1()
{
	//var myId = 
	document.getElementById("next").setAttribute("class", "next1");
	//myId.className = 'next1';
}
function changeId2()
{
	//var myId = 
	document.getElementById("next1").setAttribute("class", "next");
	//myId.className = 'next';
}
