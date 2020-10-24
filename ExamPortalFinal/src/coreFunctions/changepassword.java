package coreFunctions;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import databaseHandling.Changepassword;

@WebServlet("/changepassword")
public class changepassword extends HttpServlet {
	//Change password of the asked student. Shows correct/error message
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	   PrintWriter out=response.getWriter();
	   String email=String.valueOf(request.getParameter("email"));
	   String oldpassword=String.valueOf(request.getParameter("oldpassword"));
	   String newpassword=String.valueOf(request.getParameter("newpassword"));
	   String cnfmpassword=String.valueOf(request.getParameter("cnfmpassword"));
	   if(cnfmpassword.equals(newpassword)){
		   Changepassword cp=new Changepassword();
		   boolean b=cp.change(email, oldpassword, newpassword);
		   if(b){
			   out.println("Password is succesfully changed...You can navigate away");
		   }
		   else{
			   out.println("Invalid Credentials :( Try Again");
		   }
	   }
	   else{
		   out.println("Invalid Credentials :( Try Again");
	   }

	}

}
