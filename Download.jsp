<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
 ArrayList arrayList=(ArrayList)request.getSession().getAttribute("arrayvaleu");
System.out.println("^%%%%%%%%%%%%%"+arrayList);
 Iterator iterator=arrayList.iterator();
 while(iterator.hasNext())
 {
	 String username=iterator.next().toString(); 
	 String Filename=iterator.next().toString();
	 String type=iterator.next().toString();	
	 }
%> 
</body>
</html>
