package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.AddNewStudentDAO;
import DAO.DeleteExamTeacherDAO;

@WebServlet("/DeleteStudentExamForward")
public class DeleteStudentExamForward extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DeleteStudentExamForward() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userLogin=request.getParameter("idStudent");
		//String idExam=request.getParameter("idExam8");
		//System.out.println("idExam="+idExam+".."+userLogin);
		boolean flag;
		//String id="1";
		//request.setAttribute("bien",id);
		 try {
			flag=AddNewStudentDAO.deleteStudent(userLogin);
			request.setAttribute("thongbao", "<script>alert('Delete sucess !!!');</script>");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
		 RequestDispatcher requestDispatcher = request.getRequestDispatcher("AddStudentExam.jsp?examID2=1");
		 requestDispatcher.forward(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
