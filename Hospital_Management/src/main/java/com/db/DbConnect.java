package com.db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbConnect {
	
	
	private static Connection conn;

	
	//We just need one connection so we made this method and the property static
	
	public static Connection getConn() {
		
		if(conn!=null)
			return conn;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospitaldb", "root", "PlusOne97@");

		} catch (Exception e) {
			e.printStackTrace();
		}

		return conn;
	}
	
	

}
