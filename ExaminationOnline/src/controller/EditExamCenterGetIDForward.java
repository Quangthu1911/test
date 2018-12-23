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

import BEAN.NextQuestionTeacherForward;
import BEAN.Question;
import DAO.QuestionDAO;

/**
 * Servlet implementation class EditExamCenterGetIDForward
 */
@WebServlet("/EditExamCenterGetIDForward")
public class EditExamCenterGetIDForward extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EditExamCenterGetIDForward() {
		super();
	}

	public static String examID;
	public static int STT;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		STT = 1;
		examID = request.getParameter("examID3");
		List<Question> lists;
		try {
			lists = QuestionDAO.DisplayQuestion(examID);
			if (lists.size() > 0) {
				request.setAttribute("STT", STT);
				// request.setAttribute("STT",NextQuestionTeacherForward.STT);
				request.setAttribute("ContentQuestion", lists.get(0).getContentQuestion());
				request.setAttribute("AnswerA", lists.get(0).getAnswerA());
				request.setAttribute("AnswerB", lists.get(0).getAnswerB());
				request.setAttribute("AnswerC", lists.get(0).getAnswerC());
				request.setAttribute("AnswerD", lists.get(0).getAnswerD());
				request.setAttribute("AnswerE", lists.get(0).getAnswerE());
				request.setAttribute("AnswerTrue", lists.get(0).getAnswerTrue());
				RequestDispatcher rd1 = request.getRequestDispatcher("EditExamTeacher.jsp");
				rd1.forward(request, response);
			} else {
				RequestDispatcher rd1 = request.getRequestDispatcher("ManagementExamTeacher.jsp?ExamID6="+examID+"");
				rd1.forward(request, response);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
