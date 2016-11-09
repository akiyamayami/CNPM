package XL;

import java.sql.*;

public class Conectdatabase {
	
	private Connection conn = null;
	private String url = "jdbc:mysql://127.0.0.1/";
	private String dbName = "cnpm";
	private String driver = "com.mysql.jdbc.Driver";
	private String userName = "root"; 
	private String password = "1900561558";
	private Statement st = null;
	private ResultSet rs = null;
	public boolean ExecuteUpdateSQL(String strQuery)
	{
		try{
			Class.forName(driver).newInstance();
			conn = DriverManager.getConnection(url+dbName+"?useSSL=false",userName,password);
			st = conn.createStatement();
			rs = st.executeQuery(strQuery);
			conn.close();
		}
		catch (Exception e) {
			// TODO: handle exception
			return false;
		}
		return true;
	}
	
	public ResultSet RS(String strQuery)
	{
		try{
			Class.forName(driver).newInstance();
			conn = DriverManager.getConnection(url+dbName+"?useSSL=false",userName,password);
			st = conn.createStatement();
			rs = st.executeQuery(strQuery);	
			conn.close();
			if(rs.next())
				return rs;
			else
				return null;
		}
		catch (Exception e) {
			return null;
		}
	}
}
