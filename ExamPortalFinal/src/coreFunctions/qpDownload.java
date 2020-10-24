package coreFunctions;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import databaseHandling.getQpaper;

@WebServlet("/qpDownload")
public class qpDownload extends HttpServlet {
	//Know which question paper needs to be downloaded from database class and downloads it
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  String fil="";
		  getQpaper gqp=new getQpaper();
		  PrintWriter out=response.getWriter();
		  HttpSession session=request.getSession();
		  String rollnumber=(String) session.getAttribute("rollNumber");
		  fil=gqp.getQuestionPaperName(rollnumber);
		  if(fil!=""){
		  String filepath = "D:\\ewoneX\\QPaper\\";   
		  response.setContentType("APPLICATION/OCTET-STREAM");   
		  response.setHeader("Content-Disposition","attachment; filename=\"" + fil + "\"");   
		  java.io.FileInputStream fileInputStream=new java.io.FileInputStream(filepath + fil);  	            
		  int i; 
		  while ((i=fileInputStream.read()) != -1) {  
		    out.write(i);   
		  }   
		  fileInputStream.close();
		  }
		  else{
			  out.println("You do not have any exam lined up today....Go back, Log out and come on exam day!!");
		  }
		  
	}

}
