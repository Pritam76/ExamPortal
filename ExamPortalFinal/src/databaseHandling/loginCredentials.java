package databaseHandling;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class loginCredentials {
	//for students
	public boolean verifyloginCredentials(String rollnumber, String password){
		PreparedStatement stmt=null;
		Connection con=null;
		ResultSet rs=null;
		boolean b=false;
		try{
			Class.forName("org.h2.Driver");
			con=DriverManager.getConnection("jdbc:h2:~/test", "sa", "");
			String query="SELECT * FROM Students where rollNumber=? and password=?";
			stmt=con.prepareStatement(query);
			stmt.setString(1,rollnumber);
			stmt.setString(2,password);
			rs=stmt.executeQuery();
			b=rs.next();
			con.close();stmt.close();rs.close();		
		}
		catch(Exception e){
			System.out.println(e);
		}
		finally{
			if(con!=null){
				con=null;
			}
			if(stmt!=null){
				stmt=null;
			}
			if(rs!=null){
				rs=null;
			}
			
		}
		return b;
	}
}
