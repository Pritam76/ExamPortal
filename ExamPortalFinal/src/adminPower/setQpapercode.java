package adminPower;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/setQpapercode")
public class setQpapercode extends HttpServlet {
	//sets Question Paper code in database and sends user back to AdminDashboard
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ECEcode, MEcode, CSEcode;
		ECEcode=request.getParameter("qpECE");
		MEcode=request.getParameter("qpME");
		CSEcode=request.getParameter("qpCSE");
		int i;
		try{
			Class.forName("org.h2.Driver");
			Connection con=DriverManager.getConnection("jdbc:h2:~/test", "sa", "");
			Statement stmt=con.createStatement();
			if(ECEcode!=""){
			String sql="UPDATE qpDistribution SET qpcode='"+ECEcode+"' WHERE department='108117'";
			i=stmt.executeUpdate(sql);
			}
			if(MEcode!=""){
				String sql="UPDATE qpDistribution SET qpcode='"+MEcode+"' WHERE department='111117'";
				i=stmt.executeUpdate(sql);
			}
			if(CSEcode!=""){
				String sql="UPDATE qpDistribution SET qpcode='"+CSEcode+"' WHERE department='106117'";
				i=stmt.executeUpdate(sql);
			}
			stmt.close();con.close();
			response.sendRedirect("AdminDashboard.jsp");
		}
		catch(Exception e){
			System.out.print(e);
		}

	}

}
