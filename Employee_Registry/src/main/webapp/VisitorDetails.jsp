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
<h1 align="center">Visitor Registration Form</h1>

<form onsubmit="return valid()">
<table>
<tr>
<td>Enter the Name  : </td>
<td><input type="text" name="name" required></td>
</tr>
<tr>
<td>Enter the Reason  : </td>
<td><input type="text" name="reason" required></td>
</tr>
<tr>
<td>Enter the ID number : </td>
<td><input type="text" name="id" required></td>
</tr>
<tr>
<td>Mobile No : </td>
<td><input type="text" name="mob" id="mobile"><span id="er2"></span></td>
</tr>
<tr>
<td>Coming From : </td>
<td><input type="text" name="address"></td>
</tr>
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
<h3 align="center">
<button><a href="VisitorView.jsp">Click Here to View !!!</a></button>
<button><a href="LogoutPage.jsp">Logout</a></button></h3>

<%
String b=request.getParameter("btn");
if(b!=null&& b.equals("Register")){
	int vid=Integer.parseInt(request.getParameter("id"));
	String vname=request.getParameter("name");
	String vreason=request.getParameter("reason");
	String vmobile=request.getParameter("mob");
	String vaddress=request.getParameter("address");
	String vIndate=request.getParameter("Indate");
	String vIntime=request.getParameter("Intime");
%>
<jsp:useBean id="obj" class="com.zoho.DatabaseCode"/>
<h3 align="center">
<%
	int r=obj.VisitorInsert(vid, vname, vreason, vmobile,vaddress,vIndate,vIntime);
	out.print((r>0)?"Registered":"Not Registered");	
}
%>
</h3>
</form>
<script src="validation.js"></script>
</body>
</html>