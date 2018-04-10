package org.login;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.database.ConnectionManager;



public class Login {

	public boolean AuthenticateUser(String USER, String PASSWORD)
	{
		try
		{
			Connection con = ConnectionManager.getConnection();
			PreparedStatement ps = con.prepareStatement("SELECT PASSWORD from users where USERNAME=?");
			ps.setString(1, USER);
			ResultSet rs = ps.executeQuery();
			if(rs.next())
			{
				if(PASSWORD.equals(rs.getString(1)))
				{
					return true;
				}
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}		
		return false;
	}

	public  boolean AuthenticateAdmin(String ADMIN, String PASSWORD)
	{
	
		try
		{
			Connection con = ConnectionManager.getConnection();
			PreparedStatement ps = con.prepareStatement("SELECT PASSWORD from admin where USERNAME=?");
			ps.setString(1, ADMIN);
			ResultSet rs = ps.executeQuery();
			if(rs.next())
			{
				if(PASSWORD.equals(rs.getString(1)))
				{
					return true;
				}
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}		
		return false;
	}
	
}
