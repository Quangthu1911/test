package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import BEAN.Conservation;
import BEAN.ListScore;
import BEAN.UserLogin;
import BEAN.listAddStudent;
import DB.DBConnection;
import controller.ConserStudenrForward;
import controller.LoginForward;

public class ListScoreDAO {
	public static List<ListScore> DisplayListScoreStudent(String examID) throws SQLException
	{
		Connection conn=null;
	    DBConnection kn=new DBConnection();
		conn=kn.ketNoi();
		List<ListScore> listScore= new ArrayList<ListScore>();
		try 
		{
			ResultSet rSet=null;
			PreparedStatement ptmt=conn.prepareStatement("select Users.UserLogin, UserName,Score.ExamID,Exams.ExamName,Score.ScoreStudent from Score,Exams, Users where Score.ExamID='"+examID+"' AND Score.UserLogin=Users.UserLogin AND Exams.ExamID='"+examID+"'");
			rSet=ptmt.executeQuery();
			while(rSet.next())
			{
				ListScore cs=new ListScore();
				String UserLogin=rSet.getString("UserLogin");
				String UserName=rSet.getString("UserName");
				String ExamID=rSet.getString("ExamID");
				String ExamName=rSet.getString("ExamName");
				float ScoreStudent=rSet.getFloat("ScoreStudent");
				cs.setUserLogin(UserLogin);
				cs.setNameStudent(UserName);
				cs.setExamID(ExamID);
				cs.setExamName(ExamName);
				cs.setDiem(ScoreStudent);
				listScore.add(cs);
			}
			
		}
		catch (SQLException e) {
		}
		return listScore;
		
	}
	public static List<listAddStudent> DisplayListAddStudent(String User) throws SQLException
	{
		Connection conn=null;
	    DBConnection kn=new DBConnection();
		conn=kn.ketNoi();
		List<listAddStudent> listAdd= new ArrayList<listAddStudent>();
		try 
		{
			ResultSet rSet=null;
			PreparedStatement ptmt=conn.prepareStatement("select Users.UserLogin, Users.UserName,Users.Address,Users.Certi,Exams.ExamID from Score inner join Users on Score.UserLogin=Users.UserLogin\r\n" + 
					"inner join Exams on Score.ExamID=Exams.ExamID\r\n" + 
					"where Exams.ExamID='"+User+"'");
			rSet=ptmt.executeQuery();
			while(rSet.next())
			{
				listAddStudent cs=new listAddStudent();
				String UserLogin=rSet.getString("UserLogin");
				String UserName=rSet.getString("UserName");
				String Address=rSet.getString("Address");
				String Certi=rSet.getString("Certi");
				String ExamID=rSet.getString("ExamID");
				cs.setUserLogin(UserLogin);
				cs.setUserName(UserName);
				cs.setAddress(Address);
				cs.setCerti(Certi);
				cs.setExamID(ExamID);
				listAdd.add(cs);
			}
			
		}
		catch (SQLException e) {
		}
		return listAdd;
		
	}
	public static List<UserLogin> DisplayListUser(String examID) throws SQLException
	{
		Connection conn=null;
	    DBConnection kn=new DBConnection();
		conn=kn.ketNoi();
		//List<UserLogin>listUser =ArrayList<UserLogin>();
		List<UserLogin> listUser= new ArrayList<UserLogin>();
		//String examID=
		try 
		{
			ResultSet rSet=null;
			PreparedStatement ptmt=conn.prepareStatement("select UserLogin, UserName from Users where Permission='1'\r\n" + 
					"except\r\n" + 
					"(select Users.UserLogin, Users.UserName from Score inner join Users on Score.UserLogin=Users.UserLogin \r\n" + 
					"					inner join Exams on Score.ExamID=Exams.ExamID \r\n" + 
					"					where Exams.ExamID='"+examID+"')");
			rSet=ptmt.executeQuery();
			while(rSet.next())
			{
				UserLogin cs=new UserLogin();
				String UserLogin=rSet.getString("UserLogin");
				String UserName=rSet.getString("UserName");
				cs.setUserLogin(UserLogin);
				cs.setUserName(UserName);
				listUser.add(cs);
			}
			
		}
		catch (SQLException e) {
		}
		return listUser;
		
	}

}
