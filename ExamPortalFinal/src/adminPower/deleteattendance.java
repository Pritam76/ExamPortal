package adminPower;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/deleteattendance")
public class deleteattendance extends HttpServlet {
	//Deletes he attendance so that next day you can have fresh Database to work on
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Statement stmt=null;
		Connection con=null;
		String query;
		ResultSet rs=null;
		try{
			Class.forName("org.h2.Driver");
		    con=DriverManager.getConnection("jdbc:h2:~/test", "sa", "");
			stmt=con.createStatement();
			String sql="DELETE FROM StudentsAttendance";
			boolean i=stmt.execute(sql);
			PrintWriter out=response.getWriter();
			out.print("Successfully Deleted attendance for today... Ready for the next day");
		}
		catch(Exception e){
			System.out.print(e);
		}
	}

}
