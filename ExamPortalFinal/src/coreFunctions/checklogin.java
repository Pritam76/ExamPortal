package coreFunctions;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import databaseHandling.loginCredentials;

@WebServlet("/checklogin")
public class checklogin extends HttpServlet {
	//Checks login credentials. Calls the database methods to check the credibility
	//If correct,redirected to StudentDashboard else login page
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String rollnumber=String.valueOf(request.getParameter("rollno"));
		String password=request.getParameter("password");
		loginCredentials lc=new loginCredentials();
		boolean b=lc.verifyloginCredentials(rollnumber, password);
		if(b){
			HttpSession session=request.getSession();
			session.setAttribute("rollNumber", rollnumber);
			response.sendRedirect("StudentDashboard.jsp");
			System.out.println("Logged in");
		}
		else{
			System.out.println("not Logged in");
			response.sendRedirect("login.jsp");
		}
	}
}
