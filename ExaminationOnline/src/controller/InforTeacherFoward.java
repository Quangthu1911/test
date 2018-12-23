package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import BEAN.Exam;
import BEAN.UserLogin;
import DAO.ExamDAO;
import DAO.InforTeacherDAO;
//import sun.plugin.com.Dispatcher;


@WebServlet("/InforTeacherFoward")
public class InforTeacherFoward extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public InforTeacherFoward() {
        super();
    }
	public void init(ServletConfig config) throws ServletException {
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
		try {
			List<UserLogin> lists=InforTeacherDAO.DisplayInForTeacher();
			request.setAttribute("nameLabel", lists.get(0).getUserName());
		    HttpSession session = request.getSession();
			session.setAttribute("sessionUserLogin",lists.get(0).getUserLogin());
			request.setAttribute("phoneLabel", lists.get(0).getPhoneNumber());
			request.setAttribute("cerLabel", lists.get(0).getCerti());
			request.setAttribute("addrLabel",lists.get(0).getAddress());
			RequestDispatcher rd=request.getRequestDispatcher("/GV.jsp");
			rd.forward(request,response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
