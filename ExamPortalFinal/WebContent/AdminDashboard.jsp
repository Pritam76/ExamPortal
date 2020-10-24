<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<%
	response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
	if(session.getAttribute("role")==null){
		response.sendRedirect("AdminLogin.jsp");
	}
%>
<h1 class="text-center text-light" style="margin:30px;background-color:lightgreen;padding:30px;font-size:60px;font-family:cursive;">Exam Portal</h1>

  	<h3 style="text-align:center">Logged in as:Admin</h3><hr>
    <br>  
    <p class="text-right"><a href="logoutadmin"><button class="btn btn-warning">Logout</button></a></p>
    <p>
      <ol>
    	<li><h2><a href="setQP.jsp"><button class="btn btn-primary">Set Question Paper Code</button></a></h2></li>
       	<li><h2><a href="uploadQpaper.jsp"><button class="btn btn-success">Upload Question Paper</button></a></h2></li>
        <li><h2><a href="Attendance.jsp"><button class="btn btn-primary">Attendance</button></a></h2></li>
        <li><h2><a href="deleteattendance"><button class="btn btn-success">Delete Attendance</button></a></h2></li>
        
      </ol>
    
    </p>
      <br><br><h1 class="text-center text-light" style="margin:30px;background-color:lightgreen;padding:10px;font-size:30px;font-family:cursive;">Designed by:Pritam Mishra</h1>
    
</body>
</html>