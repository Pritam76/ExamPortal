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
    
<div style="width:40%;float:left;color:white;">......</div>
<div style="width:60%;float:left">
  	<h3>Select a file to upload:</h3>
	<form action="QuestionPaperUpload.jsp" method="post" enctype="multipart/form-data" style=""><br>
		<input type="file" name="file" size="50" required/><br>
		<button type="submit" class="btn btn-warning">Upload</button>
	</form>
</div>
  <br><br><h1 class="text-center text-light" style="margin:30px;background-color:lightgreen;padding:10px;font-size:30px;font-family:cursive;">Designed by:Pritam Mishra</h1>

</body>
</html>