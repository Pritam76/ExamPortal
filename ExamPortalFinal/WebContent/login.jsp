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
 <div class="row">
  <div class="col-sm-6">
  	<h2>Semester Exam - Student Login</h2><br><br>
  	<p class="text-danger"><h4>Instruction to Candidates</h4></p>
  	<p>Additional time of 30 minutes (irrespective of any duration) added in duration for uploading the answer key. Beyond this no additional time is allowed. No email of answer script will be allowed. </p>
  	<br>
  	<strong>Example</strong>
  	<ol>
  		<li>If the duration is 1 Hours: Time allowed is 1 hour and 30 minutes.</li>
  		<li>If the duration is 2 Hours: Time allowed is 2 hours and 30 minutes.</li>	
  	</ol>
  	<br><br>
  	<b><i>TIME MANAGEMENT IS YOUR RESPONSIBILITY!!<br>It is strongly recommended that you log-in only at the scheduled time.</i></b>
  
  </div>
  <div class="col-sm-6" >
  <br><br>
  	<h3 id="clock" class="text-center">x:XX:xx</h3> 
  
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
  	<br><br>
  	<p class="text-center"><a href="declaration.jsp"><button class="btn btn-warning">Declaration Format</button></a></p>
  	<br><br>
  	<form action="checklogin" method="post" style="max-width:500px;margin:auto">
	  	<div class="input-container">
		    <i class="fa fa-user icon"></i>
		    <input class="input-field" type="text" placeholder="ROLL NUMBER" name="rollno">
	  	</div>  
	  	<div class="input-container">
		    <i class="fa fa-key icon"></i>
		    <input class="input-field" type="password" placeholder="PASSWORD" name="password">
	  	</div>
	
	  	<button type="submit" class="btn">Login</button>
  	</form>
  </div>
	
</div> 

  <h1 class="text-center text-light" style="margin:30px;background-color:lightgreen;padding:10px;font-size:30px;font-family:cursive;">Designed by:Pritam Mishra</h1>


</body>
</html>