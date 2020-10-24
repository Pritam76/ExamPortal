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
	if(session.getAttribute("rollNumber")==null){
		response.sendRedirect("login.jsp");
	}
%>
	<h1 class="text-center text-light" style="margin:30px;background-color:lightgreen;padding:30px;font-size:60px;font-family:cursive;">Exam Portal</h1>
  	<h3 id="clock" class="text-center">x:XX:xx</h3> <br>
  	<h3 style="text-align:center">Logged in as:
  	<%
		String s=String.valueOf(session.getAttribute("rollNumber"));
		out.print(s);
	%></h3><hr>
    	<p class="text-center"><a href="declaration.jsp"><button class="btn btn-warning">Declaration Format</button></a></p>
    	<p class="text-right"><a href="logout"><button class="btn btn-warning">Logout</button></a></p>
    <script> 
        setInterval(showTime, 1000); 
        function showTime() { 
            let time = new Date(); 
            let hour = time.getHours(); 
            let min = time.getMinutes(); 
            let sec = time.getSeconds(); 
            am_pm = "AM"; 
  
            if (hour > 12) { 
                hour -= 12; 
                am_pm = " PM"; 
            } 
            if (hour == 0) { 
                hr = 12; 
                am_pm = " AM"; 
            } 
  
            hour = hour < 10 ? "0" + hour : hour; 
            min = min < 10 ? "0" + min : min; 
            sec = sec < 10 ? "0" + sec : sec; 
  
            let currentTime = hour + ":"  
                + min + ":" + sec + am_pm; 
  
            document.getElementById("clock") 
                .innerHTML = currentTime; 
        } 
  
        showTime(); 
    </script>
    <br><br><br>
<div class="row text-center">
  <div class="col-sm-6">
  	<button  class="btn btn-warning"><a href="./qpDownload">Download Question Paper</a></button>
  </div>
  <div class="col-sm-6 text-left" >
  	<h3>Select a file to upload:</h3>
	<form action="answerScriptUpload.jsp" method="post" enctype="multipart/form-data"><br>
		<input type="file" name="file" size="50" /><br>
		<button type="submit" class="btn btn-warning">Upload</button>
	</form>
  </div>
</div>
<p style="text-align:right;">
 <button onclick="vibilityChange()">Change my password</button> 
</p>
<div id="passChangeSeg" style="display:none;text-align:right;">
	<form method="post" action="changepassword">
		E-mail : <input name="email" placeholder="E-mail"><br>
		Old Password : <input name="oldpassword" placeholder="Old Password" required><br>
		New Password<input type="password" name="newpassword" placeholder="New Password" required><br>
		Confirm Password<input type="password" name="cnfmpassword" placeholder="Confirm Password" required><br>
		<button type="submit">Change</button>
	</form>
</div>
	
	<br>
<script>
function vibilityChange(){
	console.log("REached");
	document.getElementById("passChangeSeg").style.display="block";
}

</script>
	  <br><br><h1 class="text-center text-light" style="margin:30px;background-color:lightgreen;padding:10px;font-size:30px;font-family:cursive;">Designed by:Pritam Mishra</h1>
	
</body>
</html>