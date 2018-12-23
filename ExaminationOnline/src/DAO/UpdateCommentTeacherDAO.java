package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import BEAN.Conservation;
import BEAN.UserLogin;
import DB.DBConnection;
import controller.LoginForward;

public class UpdateCommentTeacherDAO {
	public static boolean updateCommentTeacher(String contentTeacher, String conserID) throws SQLException {
		Connection conn=null;
		String sql = "update Conservation set ContentTeacher=? where ConserID=?";
        DBConnection kn=new DBConnection();
		conn=kn.ketNoi();
        PreparedStatement statement = conn.prepareStatement(sql);
        statement.setString(1, contentTeacher);
        statement.setString(2,conserID);
        boolean rowUpdated = statement.executeUpdate() > 0;
        statement.close();
       // disconnect();
        return rowUpdated;     
    }

}
