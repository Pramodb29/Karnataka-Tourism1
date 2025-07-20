package in.tourstravels.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class connector {
	
	public static Connection requestConnection() {
		
		Connection con=null;
		String url="jdbc:mysql://localhost:3306/tours_travels_management";
		String user="root";
		String password="tiger";
		try {
			
			//first 2 steps of jdbc
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			con=DriverManager.getConnection(url, user, password);
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;
	}

}
