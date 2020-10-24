package databaseHandling;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class Changepassword {
	//Changes password for student
	public boolean change(String email, String oldpassword, String newpassword){
		Statement stmt=null;
		Connection con=null;
		String query;
		ResultSet rs=null;
		boolean b=false;
		try{
			Class.forName("org.h2.Driver");
			con=DriverManager.getConnection("jdbc:h2:~/test", "sa", "");
			query="SELECT * FROM Students where email='"+email+"'";
			stmt=con.createStatement();
			rs=stmt.executeQuery(query);
			if(rs.next()){
				String oldpass=rs.getString(2);
				if(oldpass.equals(oldpassword)){
					query="UPDATE Students SET password='"+newpassword+"' WHERE email='"+email+"'";
					int chnge=stmt.executeUpdate(query);
					System.out.println("updated");
					b=true;
				}
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
		return b;
	}
}
}
