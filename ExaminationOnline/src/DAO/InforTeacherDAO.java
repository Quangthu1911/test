package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;

import BEAN.Conservation;
import BEAN.UserLogin;
import DB.DBConnection;
import controller.ConserStudenrForward;
import controller.LoginForward;

public class InforTeacherDAO {
	
	public static List<UserLogin> DisplayInForTeacher() throws SQLException
	{
		Connection conn=null;
	    DBConnection kn=new DBConnection();
		conn=kn.ketNoi();
		List<UserLogin> list= new ArrayList<UserLogin>();
		try 
		{
			ResultSet rSet=null;
			PreparedStatement ptmt=conn.prepareStatement("select * from Users where UserLogin='"+LoginForward.name+"'");
			rSet=ptmt.executeQuery();
			while(rSet.next())
			{
				UserLogin cs=new UserLogin();
				String UserLogin=rSet.getString("UserLogin");
				String Password=rSet.getString("Password");
				String Email=rSet.getString("Email");
				String UserName=rSet.getString("UserName");
				String Address=rSet.getString("Address");
				String PhoneNumber=rSet.getString("PhoneNumber");
				String Certi=rSet.getString("Certi");
				cs.setUserLogin(UserLogin);
				cs.setPassword(Password);
				cs.setEmail(Email);
				cs.setUserName(UserName);
				cs.setAddress(Address);
				cs.setPhoneNumber(PhoneNumber);
				cs.setCerti(Certi);
				list.add(cs);
			}
			
			
		}
		catch (SQLException e) {
		}
		return list;
		
	}
	public static boolean updateImfor(UserLogin user) throws SQLException {
		Connection conn=null;
		String sql = "UPDATE Users SET UserName = ?, PhoneNumber = ?, Certi = ?,Address=?";
        sql += " WHERE UserLogin ='"+LoginForward.name+"'";
        DBConnection kn=new DBConnection();
		conn=kn.ketNoi();
         
        PreparedStatement statement = conn.prepareStatement(sql);
        statement.setString(1, user.getUserName());
        statement.setString(2, user.getPhoneNumber());
        statement.setString(3,user.getCerti());
        statement.setString(4, user.getAddress());
       // statement.setString(5, user.getUserLogin());
        boolean rowUpdated = statement.executeUpdate() > 0;
        statement.close();
       // disconnect();
        return rowUpdated;     
    }
	public static boolean viewScoreStudent()
	{
		return true;
	}

}
