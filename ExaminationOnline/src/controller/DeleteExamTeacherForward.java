package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.DeleteExamTeacherDAO;
import DAO.ExamDAO;

@WebServlet("/DeleteExamTeacherForward")
public class DeleteExamTeacherForward extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public DeleteExamTeacherForward() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		boolean flag;
		 String id=request.getParameter("idExam");
		
		//String id="1";
		//request.setAttribute("bien",id);
		 try
		 {
			 DeleteExamTeacherDAO.deleteExamTeacher("8");
			 request.setAttribute("thongbao", "<script>alert('Delete success !!!');</script>");
			 RequestDispatcher requestDispatcher = request.getRequestDispatcher("ManagementExamTeacher.jsp?ExamID6="+LoginForward.UserLogin+"");
			 requestDispatcher.forward(request,response); 
		 }
		 catch (Exception e) {
			 request.setAttribute("thongbao", "<script>alert('Delete failed !!!');</script>");
			 RequestDispatcher requestDispatcher = request.getRequestDispatcher("ManagementExamTeacher.jsp?ExamID6="+LoginForward.UserLogin+"");
			 requestDispatcher.forward(request,response); 
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
