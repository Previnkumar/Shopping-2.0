package org.login;

import java.sql.Connection;
import java.sql.PreparedStatement;

import org.database.ConnectionManager;

public class Register {

	public static boolean register(UserPojo u)
	{  
		int status=0;  
		try
		{  
			Connection con=ConnectionManager.getConnection();  
			
			PreparedStatement ps=con.prepareStatement("insert into users values(?,?,?,?,?,?,?)");  
			ps.setString(1,u.getMAILID());  
			ps.setString(2,u.getUSERNAME());  
			ps.setString(3,u.getPASSWORD());
			ps.setString(4, u.getMOBILENO());
			ps.setString(5, u.getADDRESS());
			ps.setString(6,u.getSTATE());
			ps.setString(7, u.getCOUNTRY());	              
			status = ps.executeUpdate();  	
		}
		catch(Exception e)
		{ 
			System.out.println(e);
		}  
		if(status>0)
			return true;
		else
			return false;
		  
		}  
}
