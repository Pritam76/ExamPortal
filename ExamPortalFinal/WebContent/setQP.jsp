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
<h1 class="text-center text-light" style="margin:30px;background-color:lightgreen;padding:30px;font-size:60px;font-family:cursive;">Exam Portal</h1>
<%
response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
	if(session.getAttribute("role")==null){
		response.sendRedirect("AdminLogin.jsp");
	}
%>
  	<h3 style="text-align:center">Logged in as:Admin</h3><hr>
    <p class="text-right"><a href="logoutadmin"><button class="btn btn-warning">Logout</button></a></p>

  <div style="width:50%;float:left;text-align:justify;padding:50px;font-size:1.5em;">
  <h2><u>INSTRUCTIONS:</u></h2>
  	<ol>
  		<li >Make sure you have uploaded the question paper before setting up the code here</li>
  		<li>If you do not want to change code for a specific department, leave it empty.</li>	
  		<li>The given name should match the file's name.</li>
  	</ol>
  </div>
  <div style="width:50%;float:left;text-align:center;font-size:1.5em;padding:70px;">
  	<form action="setQpapercode" method="post">
	<b>ECE(108117***)</b> : <input class="input-field" type="text" placeholder="Q PAPER CODE" name="qpECE"><br><br>
	<b>ME(111117***)</b> : <input class="input-field" type="text" placeholder="Q PAPER CODE" name="qpME"><br><br>
	<b>CSE(106117***)</b> : <input class="input-field" type="text" placeholder="Q PAPER CODE" name="qpCSE"><br><br>
	<button type="submit">Submit</button>
</form>
  </div>
  	  <br><br><h1 class="text-center text-light" style="margin:30px;background-color:lightgreen;padding:10px;font-size:30px;font-family:cursive;">Designed by:Pritam Mishra</h1>
</body>
</html>