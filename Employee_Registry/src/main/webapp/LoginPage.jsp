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
<h1 align="center">Company Entry Registration</h1>
<form onsubmit="return valid()">
<table align="center">
<tr><td>
Enter the username:<input type="text" name="usr"></td></tr>

<tr><td>Enter the password:<input type="password" name="pass" id="password">
<input type="checkbox" id="chk" onclick="showpass()">Show Password 
	 <span id="er1"></span><br><br></td></tr>
<tr><td><input type="submit" value="Login" name="btn"></td>
<td><input type="reset" value="Clear All"></td></tr>
</table>
</form>
<script src="validation.js"></script> 
<%
String b=request.getParameter("btn");
if(b!=null&& b.equals("Login")){
String user=request.getParameter("usr");
String password=request.getParameter("pass");
%>
<jsp:useBean id="obj" class="com.zoho.DatabaseCode"/>
<h3 align="center">
<%
	boolean r=obj.adlog(user, password);
	if(r==true){
		RequestDispatcher rd=request.getRequestDispatcher("MainPage.jsp");
		out.print("Login Sucessfully");
		rd.forward(request, response);
	}else{
		%>
		<script>
		alert("Username or Password is Incorrect")
		</script>
		<%
		
	}
	
	
}
%>
</h3>

</body>
</html>