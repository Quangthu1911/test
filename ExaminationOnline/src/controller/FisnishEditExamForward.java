package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.Question;
import DAO.AddExamDAO;
import DAO.QuestionDAO;

/**
 * Servlet implementation class FisnishEditExamForward
 */
@WebServlet("/FisnishEditExamForward")
public class FisnishEditExamForward extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public FisnishEditExamForward() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Question> lists;
		 try {
			lists=QuestionDAO.DisplayQuestion(EditExamCenterGetIDForward.examID);
			String ContentQuestion=request.getParameter("Content");
			String AnswerA=request.getParameter("AnswerA");
			String AnswerB=request.getParameter("AnswerB");
			String AnswerC=request.getParameter("AnswerC");
			String AnswerD=request.getParameter("AnswerD");
			String AnswerE=request.getParameter("AnswerE");
			String AnswerTrue=request.getParameter("AnswerTrue");
			String AnswerF="hah";
			Question question=new Question(lists.get(EditExamCenterGetIDForward.STT-1).getQuestionID(),EditExamCenterGetIDForward.examID,ContentQuestion,AnswerA,AnswerB,AnswerC,AnswerD,AnswerE,AnswerF,AnswerTrue,lists.get(EditExamCenterGetIDForward.STT-1).getType());
			AddExamDAO.updateQuestionExam(question);
			RequestDispatcher rd=request.getRequestDispatcher("GV.jsp");
			rd.forward(request,response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
