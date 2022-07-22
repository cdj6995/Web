package kr.ac.kopo.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionFactory {
	// try catch 귀찮으면 throws로 넘기면 된다
	public Connection getConnection() throws Exception {
		Connection conn = null;
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "scott";
		String pw = "tiger";
		
		conn = DriverManager.getConnection(url, user, pw);
		
		return conn;
	
	}
}
