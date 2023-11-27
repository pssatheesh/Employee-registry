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
<%@page import="com.zoho.Visitor" %>
<body bgcolor="#b5f6f7">
<jsp:useBean id="dbobj" class="com.zoho.EmployeeCode"></jsp:useBean>
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
	Stack<Employee> emp=dbobj.select();
%>
<h1 align="center">Registered Employee Details</h1>
<button><a href="LogoutPage.jsp">Logout</a></button>
<br>
<table align="center" border="1" rules="all" cellspacing="10" cellpadding="10">
	<tr><th>Registered ID</th><th>Employee ID</th>
		<th> Employee Name</th><th>Mobile</th>
		<th>Company</th><th>Visitor InDate</th>
		<th>Visitor InTime</th><th>Visitor OutDate</th>
		<th>Visitor OutTime</th><th colspan="2">Process</th></tr>
<%
	for(Employee i:emp){
%>		
	<tr><td><%=i.geterid() %></td><td><%=i.geteid() %></td>	
		<td><%=i.getename() %></td><td><%=i.getemobile() %></td>		
		<td><%=i.getecompany() %></td><td><%=i.geteIndate() %></td>
		<td><%=i.geteIntime() %></td><td><%=i.geteOutdate() %></td>
		<td><%=i.getvOuttime() %></td>
		<td><a href="EmployeeUpdate.jsp?ch=edit&vid=<%=i.getVid() %>">Update</a></td>
		<td><a href="EmployeeView.jsp?ch=del&vid=<%=i.getVid()%>">Remove Employee</a></td>
		</tr>			
<%		
	}
%>
</table>

</body>
</html>