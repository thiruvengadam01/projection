package sqldatabase;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Jdbcdemo {

	public static void main(String[] args) throws ClassNotFoundException {
		//String drv="";
		String url="jdbc:sqlserver://172.23.237.11; databaseName=b190331;user=sa;password=P@ssw0rd";
		String query="Select * from emp";
		//Class.forName(drv);
		try {
		Connection con=	DriverManager.getConnection(url);
		Statement st= con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
		ResultSet rs=st.executeQuery(query);
		System.out.println("Connedted successfully");
while(rs.next())
		{
	
	 rs.updateString(2, "Sales");		 
	rs.updateRow();
	
			System.out.print(rs.getInt(1));
			System.out.println(rs.getString(2));
		}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		

		
		
		
		
		

	}

}