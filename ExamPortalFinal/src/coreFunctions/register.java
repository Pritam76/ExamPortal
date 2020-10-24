package coreFunctions;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import databaseHandling.registration;


@WebServlet("/register")
public class register extends HttpServlet {
	//Signup method for student
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		String rollnumber=String.valueOf(request.getParameter("rollno"));
		String password=request.getParameter("password");
		String email=request.getParameter("email");
		boolean b=rollnumber.startsWith("108117") || rollnumber.startsWith("111117") || rollnumber.startsWith("106117");
		if(!b){
			out.println("Invalid Roll Number");
		}
		else{
			registration rg=new registration();
			int code=rg.registerMe(email, password, rollnumber);
			if(code==2)
				out.println("Already Registered...Please login");
			else if(code==1)
			{
				HttpSession session=request.getSession();
				session.setAttribute("rollNumber", rollnumber);
				response.sendRedirect("StudentDashboard.jsp");
				System.out.println("Logged in");
			}
			else if(code==0){
				out.println("Some error");
			}
		}
	}
}
