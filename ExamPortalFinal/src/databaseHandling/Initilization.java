package databaseHandling;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Initilization")
public class Initilization extends HttpServlet {
	//Already done, please don't touch it;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			//Already done, please don't touch it;
			Class.forName("org.h2.Driver").newInstance();
			Connection con=DriverManager.getConnection("jdbc:h2:~/test", "sa", "");
			Statement stmt=con.createStatement();
			System.out.println("Database Created");
			String sql="CREATE TABLE IF NOT EXISTS Students (rollNumber VARCHAR(9), password VARCHAR(20), email VARCHAR(30), PRIMARY KEY(rollNumber) )";
			stmt.executeUpdate(sql);
			System.out.println("Students Table  Created");
			String sql2="INSERT INTO Students (rollNumber, password, email) VALUES ('108117000', 'password','108117000@pm.com'), ('108117001', 'password','108117001@pm.com'), ('111117000', 'password','111117000@pm.com'), ('111117001', 'password','111117001@pm.com'), ('106117000', 'password','106117000@pm.com'), ('168116001', 'password','106117001@pm.com') ";
			int affected=stmt.executeUpdate(sql2);
			System.out.println("No. of values added into Students Table = "+affected);
			//qpDistributionTable
			sql="CREATE TABLE IF NOT EXISTS qpDistribution (department VARCHAR(9), qpcode VARCHAR(20), ftime VARCHAR(15) )";
			stmt.executeUpdate(sql);
			System.out.println("qpDistribution Table  Created");
			sql2="INSERT INTO qpDistribution (department, qpcode, ftime) VALUES ('108117', 'qp1.docx','23:00'),('111117', 'qp2.docx','23:00'),('106117', 'qp3.docx','23:00') ";
			affected=stmt.executeUpdate(sql2);
			System.out.println("No. of values added into qpDistribution Table = "+affected);
			//StudentsAttendance
			sql="CREATE TABLE IF NOT EXISTS StudentsAttendance (rollNumber VARCHAR(9), qpcode VARCHAR(20), answer VARCHAR(1), PRIMARY KEY(rollNumber) )";
			stmt.executeUpdate(sql);
			System.out.println("StudentsAttendance Table  Created");
			stmt.close();con.close();
		}
		catch(Exception e){
			System.out.print(e);
		}
	}

}
