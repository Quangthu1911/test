package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

import DB.DBConnection;

public class DeleteExamTeacherDAO {
	public static boolean deleteExamTeacher(String id)
	{
	    Connection conn=null;
		DBConnection kn=new DBConnection();
		conn=kn.ketNoi();
        String sql = "execute pr_DeleteExamTeacher ?";
        try {
        	PreparedStatement ptmt=conn.prepareStatement(sql);
        	ptmt.setString(1, id);
            return ptmt.executeUpdate()> 0;
        } catch (SQLException ex) {
            Logger.getLogger(ExamDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
	}

}
