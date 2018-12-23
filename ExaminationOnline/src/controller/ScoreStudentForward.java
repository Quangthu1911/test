package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.ListScoreDAO;

@WebServlet("/ScoreStudentForward")
public class ScoreStudentForward extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ScoreStudentForward() {
        super();
   
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String examID=request.getParameter("examID2");
		System.out.println(examID);
		try {
			ListScoreDAO.DisplayListScoreStudent(examID);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
