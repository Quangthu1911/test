/*package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.Exam;

import DAO.ExamDAO;


@WebServlet("/ExamsForwardStudent")
public class ExamsForwardStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
    public ExamsForwardStudent() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Exam> list= new ArrayList<Exam>();
		
		try {
			//list=ExamDAO.DisplayExamStudent();
			List<Exam> lists=ExamDAO.DisplayExamStudent();
			request.setAttribute("listslidebanner", lists);

//			for(int i=0;i<list.size();i++)
//			{
//				out.println("<>");
//			}
//			request.setAttribute("ExamName",list.get(0).getExamName());
//		request.setAttribute("TimeEnd",list.get(0).getTimeEnd());
//			request.setAttribute("CountQuestion",list.get(0).getCountQuestion());
//			request.setAttribute("TimeDoExam",list.get(0).getTimeDoExam());
//			request.setAttribute("TimeStart",list.get(0).getTimeStart());
//			request.setAttribute("NameTeacher",list.get(0).getUserLogin());
			RequestDispatcher rd = request.getRequestDispatcher("Student.jsp");
			rd.forward(request,response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
*/