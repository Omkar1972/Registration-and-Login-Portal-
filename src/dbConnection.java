import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class dbConnection {

	private static final String URL="jdbc:mysql://localhost:3306/student";
	private static final String User="root";
	private static final String Password="omkar123";
	
	
	private static Connection getConnection() throws ClassNotFoundException, SQLException
	{
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		return DriverManager.getConnection(URL,User,Password);
		
	}
	
	
	
}
