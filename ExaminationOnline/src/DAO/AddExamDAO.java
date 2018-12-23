package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import BEAN.Exam;
import BEAN.Question;
import BEAN.UserLogin;
import DB.DBConnection;
import controller.LoginForward;

public class AddExamDAO {
	 public static boolean insertExam(Exam exam) throws SQLException {
		 Connection conn=null;
		    DBConnection kn=new DBConnection();
			conn=kn.ketNoi();
	        String sql = "INSERT INTO Exams(ExamID,ExamName,TimeStart,TimeEnd,TimeDoExam,UserLogin,CountQuestion, ScoreQuestion) VALUES(?,?,?,?,?,?,?,?)";
	        try {
	        	PreparedStatement ptmt=conn.prepareStatement(sql);
	        	ptmt.setString(1, exam.getExamID());
	        	ptmt.setString(2, exam.getExamName());
	        	ptmt.setString(3, exam.getTimeStart());
	        	ptmt.setString(4, exam.getTimeEnd());
	        	ptmt.setInt(5, exam.getTimeDoExam());
	        	ptmt.setString(6, exam.getUserLogin());
	        	ptmt.setInt(7, exam.getCountQuestion());
	        	ptmt.setDouble(8, exam.getScoreQuestion());	            
	            boolean rowInserted = ptmt.executeUpdate() > 0;
	            ptmt.close();
	            return rowInserted;
	        } catch (SQLException ex) {
	        	throw ex;
	        }
	    }
	 public static boolean insertQuestionExam(Question question) throws SQLException {
		 Connection conn=null;
		 DBConnection kn=new DBConnection();
			conn=kn.ketNoi();
	        String sql = "INSERT INTO Question(QuestionID,ExamID,ContentQuestion,AnswerA,AnswerB,AnswerC,AnswerD,AnswerE,AnswerF,AnswerTrue, Type) VALUES(?,?,?,?,?,?,?,?,?,?,?)";
	        try {
	        	PreparedStatement ptmt=conn.prepareStatement(sql);
	        	ptmt.setString(1, question.getQuestionID());
	        	ptmt.setString(2,question.getExamID());
	        	ptmt.setString(3, question.getContentQuestion());
	        	ptmt.setString(4, question.getAnswerA());
	        	ptmt.setString(5, question.getAnswerB());
	        	ptmt.setString(6, question.getAnswerC());
	        	ptmt.setString(7, question.getAnswerD());
	        	ptmt.setString(8, question.getAnswerE());	 
	        	ptmt.setString(9, question.getAnswerF());	 
	        	ptmt.setString(10, question.getAnswerTrue());
	        	ptmt.setInt(11, question.getType());
	            boolean rowInserted = ptmt.executeUpdate() > 0;
	            ptmt.close();
	            return rowInserted;
	        } catch (SQLException ex) {
	        	throw ex;
	        }
	    }
	 public static List<Exam> DisplayExamTeacher(String examID) throws SQLException
		{
			Connection conn=null;
		    DBConnection kn=new DBConnection();
			conn=kn.ketNoi();
			List<Exam> list= new ArrayList<Exam>();
			try 
			{
				String ten=LoginForward.name;
				ResultSet rSet=null;
				PreparedStatement ptmt=conn.prepareStatement("Select * from Exams where Exams.UserLogin='"+examID+"'");
				rSet=ptmt.executeQuery();
				while(rSet.next())
				{
					Exam ex=new Exam();
					String ExamID=rSet.getString("ExamID");
					String ExamName=rSet.getString("ExamName");
					String TimeStart=rSet.getString("TimeStart");
					String TimeEnd=rSet.getString("TimeEnd");
					int TimeDoExam=rSet.getInt("TimeDoExam");
					String UserLogin=rSet.getString("UserLogin");
					int CountQuestion=rSet.getInt("CountQuestion");
					double ScoreQuestion=rSet.getDouble("ScoreQuestion");
					ex.setExamID(ExamID);
					ex.setExamName(ExamName);
					ex.setTimeStart(TimeStart);
					ex.setTimeEnd(TimeEnd);
					ex.setTimeDoExam(TimeDoExam);
					ex.setUserLogin(UserLogin);
					ex.setCountQuestion(CountQuestion);
					ex.setScoreQuestion(ScoreQuestion);
					list.add(ex);
				}
				
				
			}
			catch (SQLException e) {
			}
			return list;
			
		}
	 public static boolean updateQuestionExam(Question question) throws SQLException {
			Connection conn=null;
			String sql = "update Question set ContentQuestion=?,AnswerA=?,AnswerB=?,AnswerC=?, AnswerD=?,AnswerE=?,\r\n" + 
					"AnswerF=?,AnswerTrue=? where QuestionID=? and ExamID=?";
	        DBConnection kn=new DBConnection();
			conn=kn.ketNoi();
	         
	        PreparedStatement statement = conn.prepareStatement(sql);
	        statement.setString(1, question.getContentQuestion());
	        statement.setString(2,question.getAnswerA());
	        statement.setString(3,question.getAnswerB());
	        statement.setString(4, question.getAnswerC());
	        statement.setString(5, question.getAnswerD());
	        statement.setString(6, question.getAnswerE());
	        statement.setString(7, question.getAnswerF());
	        statement.setString(8, question.getAnswerTrue());
	        statement.setString(9, question.getQuestionID());
	        statement.setString(10, question.getExamID());
	        boolean rowUpdated = statement.executeUpdate() > 0;
	        statement.close();
	        return rowUpdated;     
	    }

}
