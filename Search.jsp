<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.drops.interfaces.SqlMethodImplementation"%>
<table border="10">
<tr align="right"><td align="center" style="color: black;">UserName </td><td align="center" style="color: black;"> FileName </td><td align="center" style="color: black;">FileType </td><td align="center" style="color: black;">FileSize</td></tr>
<%
String user=request.getParameter("ok");
SqlMethodImplementation implementation=SqlMethodImplementation.getImplementation();
List status=implementation.getUserDetails(user);
System.out.println("stst"+status);
 if(!status.isEmpty()){
	Iterator it=status.iterator();
	while(it.hasNext()){
	String username=(String)it.next();
	String filename=(String)it.next();
	String type=(String)it.next();
	String size=(String)it.next(); 
		%>
		<tr><td style="color: black;" ><%=username %></td><td style="color: black;"><%=filename %></td><td style="color: black;"><%=type %></td><td style="color: black;"><%=size %></td>
<%
	} 
 }
%>		
</table>
</body>
</html>

