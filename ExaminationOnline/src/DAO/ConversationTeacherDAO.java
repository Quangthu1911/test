package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import BEAN.Conservation;
import DB.DBConnection;
import controller.ConserStudenrForward;

public class ConversationTeacherDAO {
	public static List<Conservation> DisplayConservationTeacher1(String ExamID) throws SQLException
	{
		Connection conn=null;
	    DBConnection kn=new DBConnection();
		conn=kn.ketNoi();
		List<Conservation> list= new ArrayList<Conservation>();
		try 
		{
			ResultSet rSet=null;
			PreparedStatement ptmt=conn.prepareStatement("select * from Conservation\r\n" + 
					" where Conservation.ExamID='"+ExamID+"'");
			rSet=ptmt.executeQuery();
			while(rSet.next())
			{
				Conservation cs=new Conservation();
				String ConserID=rSet.getString("ConserID");
				String NameStudent=rSet.getString("NameStudent");
				String NameTeacher=rSet.getString("NameTeacher");
				String ContentStudent=rSet.getString("ContentStudent");
				String ContentTeacher=rSet.getString("ContentTeacher");
				
				String DateTime=rSet.getString("DateTime");
				ExamID=rSet.getString("ExamID");
				cs.setConserID(ConserID);
				cs.setNameStudent(NameStudent);
				cs.setNameTeacher(NameTeacher);
				cs.setContentStudent(ContentStudent);
				cs.setContentTeacher(ContentTeacher);
				cs.setDateTime(DateTime);
				cs.setExamID(ExamID);
				System.out.println(cs.getContentTeacher());
				list.add(cs);
			}
			
			
		}
		catch (SQLException e) {
		}
		return list;
		
	}
	public static List<Conservation> DisplayConservationTeacher(String ExamID) throws SQLException
	{
		Connection conn=null;
	    DBConnection kn=new DBConnection();
		conn=kn.ketNoi();
		List<Conservation> list= new ArrayList<Conservation>();
		try 
		{
			ResultSet rSet=null;
			PreparedStatement ptmt=conn.prepareStatement("select ConserID,NameStudent,NameTeacher,ContentStudent,ContentTeacher,DateTime from Conservation where ExamID='"+ExamID+"'");
			rSet=ptmt.executeQuery();
			while(rSet.next())
			{
				Conservation cs=new Conservation();
				String ConserID=rSet.getString("ConserID");
				String NameStudent=rSet.getString("NameStudent");
				String NameTeacher=rSet.getString("NameTeacher");
				String ContentStudent=rSet.getString("ContentStudent");
				String ContentTeacher=rSet.getString("ContentTeacher");
				String DateTime=rSet.getString("DateTime");
				//String ExamID=rSet.getString("ExamID");
				cs.setConserID(ConserID);
				cs.setNameStudent(NameStudent);
				cs.setNameTeacher(NameTeacher);
				cs.setContentStudent(ContentStudent);
				cs.setContentTeacher(ContentTeacher);
				cs.setDateTime(DateTime);
				cs.setExamID(ExamID);
				list.add(cs);
			}
			
			
		}
		catch (SQLException e) {
		}
		return list;
		
	}


}
