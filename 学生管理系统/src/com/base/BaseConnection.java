package com.base;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ResourceBundle;

public class BaseConnection {
	/*private final String baseone="oracle.jdbc.driver.OracleDriver";
	private final String basetwo="jdbc:oracle:thin:@192.168.1.144:1521:ORCL";192.168.1.144
	private final String username="JPERPDATA";jperpdata
	private final String password="JPERPDATA";*/
	public static int line_id; 
	
	private Connection conn=null;
	
	public BaseConnection(){
		ResourceBundle bundle = ResourceBundle.getBundle("db");
		String driver = bundle.getString("driver");
		String url = bundle.getString("url");
		String username = bundle.getString("username");
		String password = bundle.getString("password");
			try {
				Class.forName(driver).newInstance();
			} catch (InstantiationException e1) {
				System.out.println(e1.toString());
				
			} catch (IllegalAccessException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} catch (ClassNotFoundException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			try {
				this.conn=DriverManager.getConnection(url,username,password);
			} catch (SQLException e) {
				System.out.println(e.toString());
			}
	}
	
	//取得数据库的连接
	public Connection getConn(){
		
		return this.conn;
	}
	
	//关闭数据库的连接
	public void close(){
		
		try {
			this.conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
};
