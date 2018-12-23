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

import BEAN.Exam;
import BEAN.Question;
import BEAN.ReadFileExcel;
import DAO.AddExamDAO;
import DAO.ExamDAO;
import DAO.QuestionDAO;

/**
 * Servlet implementation class AddExamLocalForward
 */
@WebServlet("/AddExamLocalForward")
public class AddExamLocalForward extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public AddExamLocalForward() {
        super();
    }


	public static String idExam;
	public static int countExam;
	public static int soCau;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userLogin =LoginForward.name;
		Random rdt=new Random();
		idExam=String.valueOf(ExamDAO.checkIDExamMax()+1);
        //idExam=request.getParameter("idExam");
		String nameExam=request.getParameter("nameExam");
		String timeStart=request.getParameter("timeStartExam");
		String timeEnd=request.getParameter("timeEndExam");
		int timeDo=Integer.parseInt(request.getParameter("timeDoExam"));
	    Double scoreExam=Double.parseDouble( request.getParameter("scoreExam"));
		countExam=Integer.parseInt(request.getParameter("countExam"));
	   Exam exam = new Exam(idExam,nameExam,timeStart,timeEnd,timeDo,userLogin,countExam,scoreExam);
	        try {
				AddExamDAO.insertExam(exam);
				request.setAttribute("thongbao", "<script>alert('Add sucess !!!');</script>");
				
			} catch (SQLException e) {
				request.setAttribute("thongbao", "<script>alert('Add failed !!!');</script>");
				e.printStackTrace();
			}
	        String file=request.getParameter("namefile");
			List<Question> listQ=new ArrayList<>();
			listQ=ReadFileExcel.readfile(file);
			for(int i=0;i<listQ.size();i++)
			{
				//System.out.println(listQ.get(i).getContentQuestion());
				boolean insert=QuestionDAO.insertQuestion(listQ.get(i));
			}
			try {
				ExamDAO.updateExam(String.valueOf(listQ.size()), idExam);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	        RequestDispatcher rd=request.getRequestDispatcher("GV.jsp");
			rd.forward(request,response);
	}

}
