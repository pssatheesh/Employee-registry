<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<%@page import="java.util.Stack" %>
<%@page import="com.zoho.Visitor" %>
<body bgcolor="#b5f6f7">
<jsp:useBean id="dbobj" class="com.zoho.DatabaseCode"></jsp:useBean>
<%--Delete --%>
<%
	String b=request.getParameter("ch");
	if(b!=null && b.equals("del")){
		int id=Integer.parseInt(request.getParameter("vid"));
		int res=dbobj.delete(id);
	}

%>
<%--Select --%>
<%
	Stack<Visitor> emp=dbobj.select();
%>
<h1 align="center">Registered Employee Details</h1>
<button><a href="LogoutPage.jsp">Logout</a></button>
<br>
<table align="center" border="1" rules="all" cellspacing="10" cellpadding="10">
	<tr><th>Visitor ID</th><th>Visitor Name</th>
		<th> Reason</th><th>Visitor Mobile</th>
		<th>Visitor Address</th><th>Visitor InDate</th>
		<th>Visitor InTime</th><th>Visitor OutDate</th>
		<th>Visitor OutTime</th><th colspan="2">Process</th></tr>
<%
	for(Visitor i:emp){
%>		
	<tr><td><%=i.getVid() %></td><td><%=i.getVname() %></td>	
		<td><%=i.getVreason() %></td><td><%=i.getVmobile() %></td>		
		<td><%=i.getVaddress() %></td><td><%=i.getvIndate() %></td>
		<td><%=i.getvIntime() %></td><td><%=i.getvOutdate() %></td>
		<td><%=i.getvOuttime() %></td>
		<td><a href="Update.jsp?ch=edit&vid=<%=i.getVid() %>">Update</a></td>
		<td><a href="VisitorView.jsp?ch=del&vid=<%=i.getVid()%>">Remove Employee</a></td>
		</tr>			
<%		
	}
%>
</table>

</body>
</html>