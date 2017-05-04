<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>all users details</h1>
<hr>
<table>
<tr><th>Id</th><th>Name</th><th>Address</th><th>Mobile</th></tr>
<%
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://us-cdbr-iron-east-03.cleardb.net:3306/ad_a6daf7caf521183","bf43069a87ffd4","f85817a2");
	System.out.println("Database Connected");
	String q = "Select * from user";
	Statement smt = con.createStatement();
	ResultSet rs = smt.executeQuery(q);
	while(rs.next())
	{
		%>
		<tr><td><%=rs.getString("id") %></td></tr>
		<tr><td><%=rs.getString("name") %></td></tr>
		<tr><td><%=rs.getString("add") %></td></tr>
		<tr><td><%=rs.getString("mob") %></td></tr>
	
	
	<%
	}
	con.close();
	System.out.println("Database disconnected...");
}catch(Exception e){
	e.printStackTrace();
}

%>
</table>


</body>
</html>