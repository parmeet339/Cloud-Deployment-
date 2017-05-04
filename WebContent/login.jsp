<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="gray">
<h1>Registration Form</h1>
<form action="RegControl" method="post">
<table border = "1">
<tr><td>Name</td><td><input type="text" name="name"> </td></tr>
<tr><td>Address</td><td><input type="text" name="add"> </td></tr>
<tr><td>Mobile</td><td><input type="text" name="mob"> </td></tr>
<tr><td>Password</td><td><input type="password" name="pass"> </td></tr>
<tr><td>Id</td><td><input type="text" name="id"> </td></tr>
<tr></tr>
<tr><td><input type="submit" value="Submit up"> </tr>
</table>
</form>
<h2><a href="view.jsp">Click Here for Registered users</a></h2>
<% if(request.getParameter("msg")!=null){
	%>
	<h2><%= request.getParameter("msg") %></h2>
	<% 
	}
	%>


</body>
</html>