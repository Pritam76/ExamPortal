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
  <style>
  * {box-sizing: border-box;}

.input-container {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  width: 100%;
  margin-bottom: 15px;
}

.icon {
  padding: 10px;
  background: dodgerblue;
  color: white;
  min-width: 50px;
  text-align: center;
}

.input-field {
  width: 100%;
  padding: 10px;
  outline: none;
}

.input-field:focus {
  border: 2px solid dodgerblue;
}

/* Set a style for the submit button */
.btn {
  background-color: dodgerblue;
  color: white;
  padding: 15px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.btn:hover {
  opacity: 1;
}
</style>
</head>
<body class="container pt-3">
<h1 class="text-center text-light" style="margin:30px;background-color:lightgreen;padding:30px;font-size:60px;font-family:cursive;">Exam Portal</h1>

<h2 class="text-center">Admin Only</h2>
  <div>
  	<br><br>
  	<br><br>
  	<form action="adminlogincheck" method="post" style="max-width:500px;margin:auto">
	  	<div class="input-container">
		    <i class="fa fa-user icon"></i>
		    <input class="input-field" type="text" placeholder="name" name="role">
	  	</div>  
	  	<div class="input-container">
		    <i class="fa fa-key icon"></i>
		    <input class="input-field" type="password" placeholder="PASSWORD" name="password">
	  	</div>
	  	<button type="submit" class="btn">Login</button>
  	</form>
  </div>
  <br><br><h1 class="text-center text-light" style="margin:30px;background-color:lightgreen;padding:10px;font-size:30px;font-family:cursive;">Designed by:Pritam Mishra</h1>
  
</body>
</html>