<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Semester Exam</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<h1 class="text-center text-light" style="margin:30px;background-color:lightgreen;padding:30px;font-size:60px;font-family:cursive;">Exam Portal</h1>
<%
	if(session.getAttribute("role")==null){
		response.sendRedirect("AdminLogin.jsp");
	}
%>
  	<h3 style="text-align:center">Logged in as:Admin</h3><hr>
    <br>  
    <p class="text-right"><a href="logoutadmin"><button class="btn btn-warning">Logout</button></a></p>
    <table style="border:1px solid black;margin:50px 600px;">
    	<thead style="border:1px solid black;padding:10px;"><tr><th>QP code</th><th>Roll Number</th></tr></thead>
    	<tbody>
 <%
 	Class.forName("org.h2.Driver");
    Statement stmt=null;
	Connection con=null;
	String query;
	ResultSet rs=null;
	try{
	    con=DriverManager.getConnection("jdbc:h2:~/test", "sa", "");
		stmt=con.createStatement();
		String sql="SELECT qpcode,rollNumber FROM StudentsAttendance GROUP BY qpcode";
		rs=stmt.executeQuery(sql);
		while(rs.next()){
			out.println("<tr >");
			out.println("<td style='padding:10px;'>"+rs.getString(1)+"</td><td style='padding:10px;'>"+rs.getString(2)+"</td>");
			out.println("</tr>");
		}
	}
	catch(Exception e){
		System.out.print(e);
	}
 
 %></tbody></table>
   <br><br><h1 class="text-center text-light" style="margin:30px;background-color:lightgreen;padding:10px;font-size:30px;font-family:cursive;">Designed by:Pritam Mishra</h1>
 
</body>
</html>