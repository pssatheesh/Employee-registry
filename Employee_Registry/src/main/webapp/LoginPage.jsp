<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="#b5f6f7">
<h1 align="center">Company Entry Registration</h1>
<form>
<table align="center">
<tr><td>
Enter the username:<input type="text" name="usr"></td></tr>
<tr><td>Enter the password:<input type="password" name="pass"></td></tr>
<tr><td><input type="submit" value="Login" name="btn"></td>
<td><input type="reset" value="Clear All"></td></tr>
</table>
</form>

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