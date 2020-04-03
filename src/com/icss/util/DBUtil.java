package com.icss.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {
	public static Connection connection;
	public static Connection getConnection() throws ClassNotFoundException, SQLException{
		//加载驱动
		Class.forName("oracle.jdbc.driver.OracleDriver");
		//获得Connection对象，连接数据库
		Connection connection = DriverManager.getConnection
				("jdbc:oracle:thin:@localhost:1521:XE","scott","tiger");
		return connection;
	}

}
