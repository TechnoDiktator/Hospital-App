package com.db;

import java.sql.Connection;

public class Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		System.out.println("Attempting COnnection.......................");
		Connection con = DbConnect.getConn();
		System.out.println(con);
		System.out.println("Connection established with database.............. ");
		
		
		
	}

}
