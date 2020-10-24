package databaseHandling;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class Attendance {
	//Gets called when a student uploads his answer sheet so he is marked present
	public void attendance(String rollnumber){
		Statement stmt=null;
		Connection con=null;
		String query;
		ResultSet rs=null;
		getQpaper qp=new getQpaper();
		String qpcode=qp.getQuestionPaperName(rollnumber);
		try{
			Class.forName("org.h2.Driver");
			con=DriverManager.getConnection("jdbc:h2:~/test", "sa", "");
			query="SELECT * FROM StudentsAttendance where rollNumber="+rollnumber;
			stmt=con.createStatement();
			rs=stmt.executeQuery(query);
			System.out.println(rs.next());
			if(rs.next()){
				System.out.println("Already uploaded");
			}
			else{
				String sql2="INSERT INTO StudentsAttendance (rollNumber, qpcode, answer) VALUES ('"+rollnumber+"', '"+qpcode+"','1') ";
				int affected=stmt.executeUpdate(sql2);
				System.out.println(affected +" answer Sheet uploaded by "+rollnumber);
			}
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
	}
}
