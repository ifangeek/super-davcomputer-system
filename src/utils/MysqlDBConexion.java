package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class MysqlDBConexion {

	public static Connection getConexion(){
		Connection cn=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			cn=DriverManager.getConnection("jdbc:mysql://localhost/colegio2017","root","");
			//cn=DriverManager.getConnection("jdbc:mysql://localhost/colegio","root","");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cn;
		
	}	
}