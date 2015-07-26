package com.util;
import java.sql.Connection;
import java.sql.DriverManager;
//import java.sql.ResultSet;
//import java.sql.SQLException;
//import java.sql.Statement;
public class DBUtil{
	private static Connection conn=null;
	final static String fileName = "D:/db/Tasks.accdb";
	public static Connection getConnection(){
		try{
			String username="";
			String passwd="";
			String url = "jdbc:odbc:Driver={Microsoft Access Driver (*.mdb, *.accdb)};DBQ="+fileName;
			conn = DriverManager.getConnection(url, username,passwd);
		}catch(Exception e){
			e.getMessage();
		}
		return conn;
	}public static void closeConnection(Connection conn){
		try{
			conn.close();
		}catch(Exception e){
			e.getMessage();
		}
	}
}	
			