<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="js/jquery-1.4.2.min.js" type="text/javascript"></script>
<script src="js/jquery.nivo.slider.js" type="text/javascript"></script>
<script type="text/javascript">
function userdetails(){
var user=document.getElementById("username").value;
     if(user==""){
		alert("type user name");
	}
	var xmlhttp;
var urls="search.jsp?ok="+user;
if(window.XMLHttpRequest){
xmlhttp=new XMLHttpRequest();
}
else{
       xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	}
xmlhttp.onreadystatechange=function()
	   {
	       if (xmlhttp.readyState==4)
	       {
	           var some=xmlhttp.responseText;
	           //alert(some+"::::::::");
	           document.getElementById("avail").innerHTML=some;                
	       }
	   }
	   xmlhttp.open("POST",urls,true);
	   xmlhttp.send();
	}
</script></head>
<body>
<!-- <form action=""> -->
<table>
<tr><td>User Name</td><td><input type="text" name="user" id="username"></input></td></tr>
<tr><td><input type="submit" value="submit"  onclick="return userdetails(this.value)"></input></td></tr>
</table>
<span id="avail"></span>
<!-- </form> -->
</body>
</html>
