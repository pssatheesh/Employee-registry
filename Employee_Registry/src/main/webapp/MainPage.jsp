<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>www.oops.com</title>
<link rel="icon" href="C:\Users\welcome\Documents\pss.png">
<style>

</style>
</head>
<body bgcolor="#b5f6f7">
<form>
<table align="center">
<tr><td><button><a href="NextPage.jsp">Employee</a></button></td></tr>
<tr><td><button><a href="VisitorDetails.jsp">Visitor</a></button></td></tr>
<tr><td><button><a href="LogoutPage.jsp">Logout</a></button></td></tr>
</table>
</form>
<jsp:useBean id="dbobj" class="com.zoho.DatabaseCode"></jsp:useBean>

</body>
</html>