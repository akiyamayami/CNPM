package XL;

import java.sql.*;
import java.sql.Statement;
public class Conectdatabase {
	
	private Connection conn = null;
	private String url = "jdbc:mysql://127.0.0.1/";
	private String dbName = "cnpm";
	private String driver = "com.mysql.jdbc.Driver";
	private String userName = "root"; 
	private String password = "1900561558";
	private Statement st = null;
	private ResultSet rs = null;
	public boolean ExecuteQuerySQL(String strQuery)
	{
		try{
			Class.forName(driver).newInstance();
			conn = DriverManager.getConnection(url+dbName+"?useSSL=false",userName,password);
			st = conn.createStatement();
			rs = st.executeQuery(strQuery);
			conn.close();
			return true;
		}
		catch (Exception e) {
			// TODO: handle exception
			return false;
		}
	}
	public boolean ExecuteUpdateSQL(String strQuery)
	{
		try{
			Class.forName(driver).newInstance();
			conn = DriverManager.getConnection(url+dbName+"?useSSL=false",userName,password);
			st = conn.createStatement();
			st.executeUpdate(strQuery);
			conn.close();
			return true;
		}
		catch (Exception e) {
			// TODO: handle exception
			return false;
		}
	}
	public ResultSet RS(String strQuery)
	{
		try{
			Class.forName(driver).newInstance();
			conn = DriverManager.getConnection(url+dbName+"?useSSL=false",userName,password);
			st = conn.createStatement();
			rs = st.executeQuery(strQuery);	
			return rs;
		}
		catch (Exception e) {
			return null;
		}
	}
	
	public void Close()
	{
		try
		{
		conn.close();
		}
		catch (Exception e) {
			// TODO: handle exception
		}
	}
}
