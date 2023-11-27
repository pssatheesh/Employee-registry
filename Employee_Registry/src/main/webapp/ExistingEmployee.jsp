<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>www.oops.com</title>
<link rel="icon" href="C:\Users\welcome\Documents\pss.png">
</head>
<body bgcolor="#b5f6f7">
<h1 align="center">Daily Register Form</h1>

<form align="center">
<table>
<tr>
<td>Enter the Employee ID : </td>
<td><input type="text" name="id"></td>
</tr>
<tr>
<tr>
<td>In Date & Time : </td>
<td><input type="date" name="Indate"></td>
<td><input type="time" name="Intime"></td>
</tr>
<tr>
<tr align="center">
<td><input type="submit" value="Register" name="btn"></td>
<td><input type="reset" value="Clear All"></td>
</tr>
</table>
<form>
<table align="center">
<tr>
<td>Enter the Employee ID : </td>
<td><input type="text" name="id"></td>
<td><input type="submit" value="Search" name="search"></td>
</tr>
</table></form>
<h3 align="center"><a href="LogoutPage.jsp">Logout</a></h3>
<%
String b=request.getParameter("btn");
if(b!=null&& b.equals("Register")){
	int eid=Integer.parseInt(request.getParameter("id"));
	String eIndate=request.getParameter("Indate");
	String eIntime=request.getParameter("Intime");
%>
<jsp:useBean id="obj" class="com.zoho.EmployeeCode"/>
<h3 align="center">
<%
	int r=obj.ExistingEmployeeInsert(eid, eIndate,eIntime);
	out.print((r>0)?"Registered":"Not Registered");
}
%>

<%	

%>
</h3>
</form>
</body>
</html>