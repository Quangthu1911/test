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

import BEAN.UserLogin;
import DAO.ExamDAO;
import DAO.InforTeacherDAO;

/**
 * Servlet implementation class EditImforForward
 */
@WebServlet("/EditImforForward")
public class EditImforForward extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public EditImforForward() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		try {
			updateBook(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	private void updateBook(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
		/*System.out.println("ljdfklsd");*/
		String editStudentValue=(String)request.getParameter("editStudentValue");
	
		List<UserLogin> lists=InforTeacherDAO.DisplayInForTeacher();
        String id =LoginForward.name;
        String name=request.getParameter("Ten");
		String phone=request.getParameter("SDT");
		String cer=request.getParameter("CMND");
		String addr=request.getParameter("NCT");
        UserLogin user = new UserLogin(id,lists.get(0).getPassword(),lists.get(0).getEmail(),cer, name, addr,lists.get(0).getVitualCode(),lists.get(0).getPermission(),phone);
        InforTeacherDAO.updateImfor(user);
        LoginForward.UserName=name;
			request.setAttribute("nameLabel", name);
			request.setAttribute("phoneLabel",phone);
			request.setAttribute("cerLabel",cer);
			request.setAttribute("addrLabel",addr);
			if(editStudentValue.equals("2"))
			{
				RequestDispatcher rd=request.getRequestDispatcher("Student.jsp");
				rd.forward(request,response);
			}
			else if(editStudentValue.equals("1"))
			{
				RequestDispatcher rd=request.getRequestDispatcher("GV.jsp");
				rd.forward(request,response);
			}
			/*RequestDispatcher rd=request.getRequestDispatcher("GV.jsp");*/
			//RequestDispatcher RD2 = getServletContext().getRequestDispatcher("InforTeacherFoward");
			//RD2.forward(request, response);
			
		} 


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
