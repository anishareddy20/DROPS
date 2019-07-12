<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Metamorphosis Design Free Css Templates</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="styles.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="Login_Fields_Validation.js">
function validateForm()

{
	var x=document.forms["myForm"]["username"].value;
	if(x==null || x==""){
                       alert("first name is missed out");
		return false;
		}
	}
</script>
</head>
<body>
<div id="right">
            	<h1 style="color: yellow;">LOGIN</h1>
                 <form name="myForm" action="Login" method="post">
                 <table>
                 <tr><td style="color: aqua;">User Name</td><td><input type="text" name="name" id="user" onblur="return validatelogin()"></input></td></tr>
                 <tr><td style="color: aqua;">Password</td><td><input type="password" name="pass" id="passw" onblur="return validatepass()"></input></td></tr>
                 <tr><td style="color: aqua;">Secret Key</td><td><input type="password" name="skey" id="key" onblur="return validatekey()"></input></td></tr>
                 <tr align="center"><td ></td><td><input  type="submit" value="Login" align="middle"></input></td></tr>
                 <tr align="right"><td align="right"><a  style="color: yellow;" href="register.jsp">New User Click Here</a></td></tr>
                 </table>
</form>
    </div> 
 </body>
</html>
