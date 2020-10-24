package PeekDatabase;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;


public class Students {
	//peek into the database
	//main method, so run it is as a Java application
	public static void main(String[] args) {
		Statement stmt=null;
		Connection con=null;
		String query;
		ResultSet rs=null;
		try{
		    con=DriverManager.getConnection("jdbc:h2:~/test", "sa", "");
			stmt=con.createStatement();
			String sql="SELECT * FROM Students";
			rs=stmt.executeQuery(sql);
			while(rs.next()){
				System.out.println(rs.getString(1)+" "+rs.getString(2)+" "+rs.getString(3));
			}
			System.out.println(".......................................");
			sql="SELECT * FROM qpDistribution";
			rs=stmt.executeQuery(sql);
			while(rs.next()){
				System.out.println(rs.getString(1)+" "+rs.getString(2)+" "+rs.getString(3));
			}
			System.out.println(".......................................");
			sql="SELECT * FROM StudentsAttendance GROUP BY qpcode";
			rs=stmt.executeQuery(sql);
			while(rs.next()){
				System.out.println(rs.getString(1)+" "+rs.getString(2)+" "+rs.getString(3));
			}
		}
		catch(Exception e){
			System.out.print(e);
		}
	}
}
