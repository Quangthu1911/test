package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import BEAN.DetailExam;
import BEAN.UserLogin;
import DB.DBConnection;

public class DetailExamDAO {
	
	public static List<DetailExam> DisplayListDetail(String examID) throws SQLException
	{
		Connection conn=null;
	    DBConnection kn=new DBConnection();
		conn=kn.ketNoi();
		//List<UserLogin>listUser =ArrayList<UserLogin>();
		List<DetailExam> listUser= new ArrayList<DetailExam>();
		//String examID=
		try 
		{
			ResultSet rSet=null;
			PreparedStatement ptmt=conn.prepareStatement("select Exams.ExamID,Exams.ExamName,Exams.CountQuestion,Question.ContentQuestion,Question.AnswerA,AnswerB,AnswerC,AnswerD,AnswerE\r\n" + 
					" from Exams inner join Question on Exams.ExamID=Question.ExamID\r\n" + 
					" Where Exams.ExamID='"+examID+"'");
			rSet=ptmt.executeQuery();
			while(rSet.next())
			{
				DetailExam cs=new DetailExam();
				String ExamID=rSet.getString("ExamID");
				String ExamName=rSet.getString("ExamName");
				int CountQuestion=rSet.getInt("CountQuestion");
				String ContentQuestion=rSet.getString("ContentQuestion");
				String AnswerA=rSet.getString("AnswerA");
				String AnswerB=rSet.getString("AnswerB");
				String AnswerC=rSet.getString("AnswerC");
				String AnswerD=rSet.getString("AnswerD");
				String AnswerE=rSet.getString("AnswerE");
				cs.setExamID(ExamID);
				cs.setExamName(ExamName);
				cs.setCountExam(CountQuestion);
				cs.setContentQuestion(ContentQuestion);
				cs.setAnswerA(AnswerA);
				cs.setAnswerB(AnswerB);
				cs.setAnswerC(AnswerC);
				cs.setAnswerD(AnswerD);
				cs.setAnswerE(AnswerE);
				listUser.add(cs);
			}
			
		}
		catch (SQLException e) {
		}
		return listUser;
		
	}

}
