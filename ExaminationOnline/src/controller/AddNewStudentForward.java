package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.Question;
import BEAN.Score;
import DAO.AddExamDAO;
import DAO.AddNewStudentDAO;

@WebServlet("/AddNewStudentForward")
public class AddNewStudentForward extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public AddNewStudentForward() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nameLogin=request.getParameter("ListStudent");
		String ExamID=request.getParameter("nameLogin");
		
		//float Score=-1;
		//System.out.println(nameLogin+"..."+ExamID);
	//	Score score=new Score(nameLogin,ExamID,Score);
		Score score=new Score(nameLogin,ExamID,-1);
		try {
			AddNewStudentDAO.insertStudent(score);			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		 RequestDispatcher requestDispatcher = request.getRequestDispatcher("AddStudentExam.jsp?examID2="+ExamID+"");
		 requestDispatcher.forward(request,response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

}
 