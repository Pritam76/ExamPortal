package databaseHandling;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class getQpaper {
	//Get question paper for a corresponding rollnumber/department 
	public String getQuestionPaperName(String rollnumber){
		String qname="";
		rollnumber=rollnumber.substring(0,6);
		System.out.println(rollnumber);
		PreparedStatement stmt=null;
		Connection con=null;
		ResultSet rs=null;
		try{
			Class.forName("org.h2.Driver");
			con=DriverManager.getConnection("jdbc:h2:~/test", "sa", "");
			String query="SELECT qpcode FROM qpDistribution where department=?";
			stmt=con.prepareStatement(query);
			stmt.setString(1,rollnumber);
			rs=stmt.executeQuery();
			if(rs.next()){
				qname=(rs.getString(1));
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
		
		return qname;
	}
}
