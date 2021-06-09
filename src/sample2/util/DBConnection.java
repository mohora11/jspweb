package sample2.util;

import java.io.Closeable;
import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	private static String url;
	private static String user;
	private static String password;
	
	static {
		url = "jdbc:mysql://3.34.139.64/test2";
		user = "root";
		password = "wnddkdwjdqhcjfl1";
	}
	
	public static Connection getConnection() {
		try {
			Connection con = DriverManager.getConnection(url, user, password);
			return con;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public static void close(AutoCloseable... objs) {
		for (AutoCloseable o : objs) {
			if (o  != null) {
				try {
					o.close();
				} catch (Exception e) {
					e.printStackTrace();
			}
		}
	}
	
}

	public static void rollback(Connection con) {
		if (con != null) {
			try {
				con.rollback();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
	}
}
