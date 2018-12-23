package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import BEAN.DetailExam;
import BEAN.Exam;
import BEAN.Score;
import DB.DBConnection;
import controller.AddNewStudentForward;

public class AddNewStudentDAO {
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
	 public static boolean insertStudent(Score score) throws SQLException {
		 	Connection conn=null;
		    DBConnection kn=new DBConnection();
			conn=kn.ketNoi();
	        String sql = "insert into Score(UserLogin, ExamID,ScoreStudent)\r\n" + 
	        		"values(?,?,?)";
	        try {
	        	PreparedStatement ptmt=conn.prepareStatement(sql);
	        	ptmt.setString(1, score.getUserLogin());
	        	ptmt.setString(2, score.getExamID());
	        	ptmt.setFloat(3, score.getDiem());    
	            boolean rowInserted = ptmt.executeUpdate() == 1;
	            ptmt.close();
	            return rowInserted;
	        } catch (SQLException ex) {
	        	throw ex;
	        }
	    }
	 public static boolean deleteStudent(String id) throws SQLException {
			    Connection conn=null;
				DBConnection kn=new DBConnection();
				conn=kn.ketNoi();
		        String sql = "Delete from Score where UserLogin=?";
		        try {
		        	PreparedStatement ptmt=conn.prepareStatement(sql);
		        	ptmt.setString(1, id);
		        	//ptmt.setString(1, ExamID);
		            return ptmt.executeUpdate() >0;
		        } catch (SQLException ex) {
		            Logger.getLogger(ExamDAO.class.getName()).log(Level.SEVERE, null, ex);
		        }
		        return false;
			}
	
}
