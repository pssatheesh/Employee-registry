<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<%@page import="java.util.Stack" %>
<%@page import="com.zoho.DatabaseCode" %>
<body bgcolor="#b5f6f7">

<h1 align="center">Employee Details Modification Form</h1>
<form>
<table>
<tr>
<td>Enter the id  : </td>
<td><input type="text" name="vid"></td>
</tr>
<tr>
<td>Out Date & Time : </td>
<td><input type="date" name="Outdate"></td>
<td><input type="time" name="Outtime"></td>
</tr>
<tr align="center">
<td><input type="submit" value="Update" name="btn"></td>
</tr>
</table>
</form>
<jsp:useBean id="obj" class="com.zoho.DatabaseCode"/>
<%
String b=request.getParameter("btn");
if(b!=null && b.equals("Update")){
	int vid=Integer.parseInt(request.getParameter("vid"));
	String date=request.getParameter("Outdate");
	String time=request.getParameter("Outtime");
	int r=obj.VisitorUpdate(vid, date,time);
	RequestDispatcher rd=request.getRequestDispatcher("VisitorView.jsp");
	rd.forward(request, response);
	
}	
%>
</body>
</html>