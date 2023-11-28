<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>www.oops.com</title>
<link rel="icon" href="C:\Users\welcome\Documents\pss.png">
</head>
<%@page import="java.util.Stack" %>
<%@page import="com.zoho.ExistingEmployee" %>
<body bgcolor="#b5f6f7">
<jsp:useBean id="dbobj" class="com.zoho.EmployeeCode"></jsp:useBean>
<%--Select --%>
<%
	Stack<ExistingEmployee> emp=dbobj.EEselect();
%>
<h1 align="center">Registered Employee Details</h1>
<button><a href="LogoutPage.jsp">Logout</a></button>
<button align="right"><a href="ExistingEmployeeDetails.jsp">Back</a></button>
<br>
<table align="center" border="1" rules="all" cellspacing="10" cellpadding="10">
	<tr><th>Employee ID</th>
	<th>Employee InDate</th><th>Employee InTime</th>
	<th>Employee OutDate</th><th>Employee OutTime</th>
	<th>Process</th></tr>
<%
	for(ExistingEmployee i:emp){
%>		
	<tr><td><%=i.getEid() %></td>		
		<td><%=i.geteIndate() %></td><td><%=i.geteIntime() %></td>
		<td><%=i.geteOutdate() %></td><td><%=i.geteOuttime() %></td>
		<td><a href="EEUpdate.jsp?ch=edit&eid=<%=i.getEid() %>">Update</a></td>
		</tr>			
<%		
	}
%>
</table>

</body>
</html>