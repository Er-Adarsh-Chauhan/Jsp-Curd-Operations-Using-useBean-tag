package org.javabeans;
import java.util.*;
import java.sql.*;

public class CurdBean {
	
	private Connection con;
	
	public void getConnection()
	{
		try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","oracle","adarsh");
		}
		catch (Exception e) {    
			// TODO: handle exception
			try {
				con.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
	}
	
	public int noneSelectOperation(String query)
	{
		int k=0;
		
		try {
			 	Statement stmt=con.createStatement();
			 	k=stmt.executeUpdate(query);
			 	stmt.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return k;
	}
	public ArrayList selectOperation(String query)
	{
		ArrayList al=new ArrayList(); 
		try {
			Statement stmt=con.createStatement();
		 	ResultSet rs=stmt.executeQuery(query);
		 	while (rs.next()) {
				String records=rs.getString(1)+" "+rs.getString(2)+" "+rs.getString(3);
				al.add(records);
			}
		 	rs.close();
		 	stmt.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return al;
	}
}
