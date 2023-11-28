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
<form>
<table align="center">
<tr><td><button><a href="EmployeeDetails.jsp">Profile Register</a></button></td></tr>
<tr><td><button><a href="ExistingEmployeeDetails.jsp">Existing Employee</a></button></td></tr>
<tr><td><button><a href="LogoutPage.jsp">Logout</a></button></td></tr>
</table>
</form>
<jsp:useBean id="dbobj" class="com.zoho.EmployeeCode"></jsp:useBean>

</body>
</html>