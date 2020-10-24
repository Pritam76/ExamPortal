
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
<body style="margin:120px;font-size:20px;text-align:center;">
<h1 class="text-center text-light" style="margin:30px;background-color:lightgreen;padding:30px;font-size:60px;font-family:cursive;">Exam Portal</h1>
<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="databaseHandling.getQpaper" %>
<%@ page import="databaseHandling.Attendance" %>

<%
File file ;
String qpcode="";
getQpaper gqp=new getQpaper();
Attendance atnd=new Attendance();
String rollnumber=String.valueOf(session.getAttribute("rollNumber"));
qpcode=gqp.getQuestionPaperName(rollnumber);
int maxFileSize = 5000 * 1024;
int maxMemSize = 5000 * 1024;
String filePath = "D:\\ewoneX\\ASheet\\";
String contentType = request.getContentType();
if ((contentType.indexOf("multipart/form-data") >= 0)) {
DiskFileItemFactory factory = new DiskFileItemFactory();
factory.setSizeThreshold(maxMemSize);
factory.setRepository(new File("c:\\temp"));
ServletFileUpload upload = new ServletFileUpload(factory);
upload.setSizeMax( maxFileSize );
try{
List fileItems = upload.parseRequest(request);
Iterator i = fileItems.iterator();
while ( i.hasNext () )
{
FileItem fi = (FileItem)i.next();
if ( !fi.isFormField () ) {
String fieldName = fi.getFieldName();
String fileName = fi.getName();
boolean isInMemory = fi.isInMemory();
long sizeInBytes = fi.getSize();
file = new File( filePath +rollnumber+"_"+qpcode) ;
fi.write( file ) ;
out.println("Uploaded file as: " + rollnumber+"_"+qpcode + "<br>");
atnd.attendance(rollnumber);
}
}
}catch(Exception ex) {
System.out.println(ex);
}
}else{
out.println("Error in file upload.");
}
%>
<h2>SAFE TO NAVIGATE AWAY</h2>
<a href="StudentDashboard.jsp"></a>
  <br><br><h1 class="text-center text-light" style="margin:30px;background-color:lightgreen;padding:10px;font-size:30px;font-family:cursive;">Designed by:Pritam Mishra</h1>

</body>
</html>