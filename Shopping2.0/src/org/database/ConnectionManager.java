package org.database;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionManager {
	private static Connection con=null;  
	static
	{  
		try
		{  
			Class.forName(DbInfo.DRIVER);  
			con=DriverManager.getConnection(DbInfo.CONNECTION_URL,DbInfo.USERNAME,DbInfo.PASSWORD);  
		}
		catch(Exception e)
		{
			System.out.println(e);
		}  
	}  	  
	public static Connection getConnection()
	{  
	    return con;
	}  
	  
}
