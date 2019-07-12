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
</head>
<body>

<div id="main">
<!-- header begins -->
<div id="header">
	<div id="logo"><a href="#">metamorph_nightsky</a><h2><a href="http://www.metamorphozis.com/" id="metamorph">Design by Metamorphosis Design</a></h2></div>
    <div id="buttons">
             <div ><a href="index.jsp" class="but_1"  title="">Home</a></div>
          <div ><a href="upload.jsp" class="but_2" title="">upload</a></div>
          <div><a href="downloadoredit.jsp"  class="but_3" title="">Download</a></div>
          <div><a href="searchfile.jsp"  class="but_4" title="">SearchFile</a></div>
          <div ><a href="logout.jsp" class="but_5" title="">LogOut</a></div>
    </div>
</div>
<!-- header ends -->
    <!-- content begins -->
    	<div id="content">
        	<div id="right">
            	<h1 style="color: yellow;">Fragment the files</h1>
                <form action="fragmentsuccess.jsp" method="" > 
 
<%
        String backColor = request.getParameter("COLOR");       
        if (backColor == null)
           backColor = "skyblue";        
     %>
    <BODY BGCOLOR="<%= backColor %>" >
    
   </div>
</body>
</html>
