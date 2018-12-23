package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.MD5Library;
import DAO.UserLoginDAO;


@WebServlet("/NewPasswordForward")
public class NewPasswordForward extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public NewPasswordForward() {
        super();
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String newpass=request.getParameter("newpass");
		String renewpass=request.getParameter("renewpass");
		request.setAttribute("loi", newpass+"A "+"A"+renewpass+"A");
		if(newpass==""||renewpass=="")
		{
			request.setAttribute("thongbao", "<script>alert('Bạn chưa nhập thông tin !!!');</script>");
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("FormNopBai.jsp");
			requestDispatcher.forward(request,response);
		}
		else if(newpass.equals(renewpass)==false)
		{
			request.setAttribute("thongbao", "<script>alert('Bạn nhập lại mật khẩu không đúng !!!');</script>");
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
			requestDispatcher.forward(request,response);
		}
		else if(newpass.length()<9)
		{
			request.setAttribute("thongbao", "<script>alert('Mật khẩu phải lớn hơn 8 kí tự !!!');</script>");
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
			requestDispatcher.forward(request,response);
		}
		else
		{
			newpass=MD5Library.md5(newpass);
			boolean update=UserLoginDAO.updateUsers( ForgetPassword.userlogin, newpass);
			if(update)
			{
				request.setAttribute("thongbao", "<script>alert('Bạn đổi mật khẩu thành công !!!');</script>");
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
				requestDispatcher.forward(request,response);
			}
			else
			{
				request.setAttribute("thongbao", "<script>alert('Bạn đổi mật khẩu thất bại !!!');</script>");
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
				requestDispatcher.forward(request,response);
			}
			
		}
		
	}

}
