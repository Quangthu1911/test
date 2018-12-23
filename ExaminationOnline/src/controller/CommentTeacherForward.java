package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.Conservation;
import DAO.UpdateCommentTeacherDAO;

@WebServlet("/CommentTeacherForward")
public class CommentTeacherForward extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public CommentTeacherForward() {
        super();
        
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String commentTeacher=request.getParameter("CommentTeacher");
	   String	conserID=request.getParameter("conserID");
		boolean flag;
		try {
			flag=UpdateCommentTeacherDAO.updateCommentTeacher(commentTeacher,conserID);
			RequestDispatcher rd=request.getRequestDispatcher("conservation.jsp");
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
