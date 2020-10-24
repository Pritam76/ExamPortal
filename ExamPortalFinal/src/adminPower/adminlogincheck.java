package adminPower;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/adminlogincheck")
public class adminlogincheck extends HttpServlet {
	//Checks if admin enters correct credentials, if correct logins and leads to AdminDashboard
	//If wrong, leads to AdminLogin page
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String role=String.valueOf(request.getParameter("role"));
		String password=String.valueOf(request.getParameter("password"));
		if(role.equals("admin") && password.equals("1234")){
			HttpSession session=request.getSession();
			session.setAttribute("role", "admin");
			response.sendRedirect("AdminDashboard.jsp");
		}
		else{
			response.sendRedirect("AdminLogin.jsp");
		}
	}

}
