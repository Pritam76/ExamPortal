package databaseHandling;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class registration {
	//for students, returns relevant info about registration
	public int registerMe(String email, String password, String rollnumber){
		int b=0;
		try{
		Class.forName("org.h2.Driver");
		Connection con=DriverManager.getConnection("jdbc:h2:~/test", "sa", "");
		Statement stmt=con.createStatement();
		String sql="SELECT * FROM Students WHERE rollNumber="+rollnumber;
		ResultSet rs=stmt.executeQuery(sql);
		if(rs.next()){
			b=2;//Already Present
		}
		else{
			String sql2="INSERT INTO Students (rollNumber, password, email) VALUES ('"+rollnumber+"', '"+password+"','"+email+"')";
			int affected=stmt.executeUpdate(sql2);
			System.out.println("No. of values added into Students Table = "+affected);
			b=1;//Added
		}
		con.close();stmt.close();rs.close();

		}
		catch(Exception e){
			System.out.print(e);
		}
		return b;//Failure
	}
}
