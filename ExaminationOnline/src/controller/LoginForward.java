package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.bouncycastle.asn1.cms.EncryptedContentInfoParser;

import BEAN.MD5Library;
import BEAN.UserLogin;
import BEAN.strSave;
import DAO.InforTeacherDAO;
import DAO.UserLoginDAO;


@WebServlet("/LoginForward")
public class LoginForward extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
    
    public LoginForward() {
        super();
    }
    public static String name;
   // public static List<strSave> listString=new ArrayList<strSave>();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	public static String UserName;
	public static String PhoneNumber;
	public static String Address;
	public static String Certi;
	public static String UserLogin;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if (request.getCharacterEncoding()==null)
		{
			request.setCharacterEncoding("UTF-8");
		}
		int permission=0;
		
		boolean flag;
		 name=request.getParameter("nameLogin");
		 String pass=request.getParameter("passLogin");
		 if(!pass.equals("1"))
		 {
			 pass=MD5Library.md5(pass);
		 }
		 
		 String rd=request.getParameter("rd");
		 
		 if (rd.equals("TS")) {
			 permission=1;
		 }
		 if(rd.equals("GV"))
		 {
			 permission=2;
		 }
		 if(rd.equals("AD"))
		 {
			 permission=3;
		 }
		 flag=UserLoginDAO.checkLogin(name, pass,permission);
		 if(flag==true)
		 {
			 HttpSession session = request.getSession();
			 session.setAttribute("UserLogin", name);
				List<UserLogin> lists;
				try {
					lists = InforTeacherDAO.DisplayInForTeacher();
					UserName=lists.get(0).getUserName();
					PhoneNumber=lists.get(0).getPhoneNumber();
					Address=lists.get(0).getAddress();
					Certi=lists.get(0).getCerti();
					UserLogin=lists.get(0).getUserLogin();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace(); 
					/*HttpSession session = request.getSession();
			 session.setAttribute("UserLogin", name);*/
				}
			 request.setAttribute("thongbao", "<script>alert('Đăng nhập tài khoản thành công !!!');</script>");
			/**/
			 if (rd.equals("TS")) {
					 RequestDispatcher requestDispatcher = request.getRequestDispatcher("Student.jsp");
					 requestDispatcher.forward(request,response);
			 }
			 if(rd.equals("GV"))
			 {
				 RequestDispatcher requestDispatcher = request.getRequestDispatcher("GV.jsp");
				 requestDispatcher.forward(request,response);
			 }
			 if(rd.equals("AD"))
			 {
				 RequestDispatcher requestDispatcher = request.getRequestDispatcher("Admin.jsp");
				 requestDispatcher.forward(request,response);
			 }
			 
		 }
		 else
		 {
			 request.setAttribute("thongbao", "<script>alert('Bạn đăng nhập tài khoản không đúng !!!');</script>");
			 RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
			 requestDispatcher.forward(request,response); 
			
		 }
		
	}

}
