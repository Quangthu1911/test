package controller;

import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.crypto.Data;

import BEAN.Exam;
import BEAN.Question;
import BEAN.ReadFileExcel;
import DAO.AddExamDAO;
import DAO.QuestionDAO;

/**
 * Servlet implementation class AddExamForward
 */
@WebServlet("/AddExamForward")
public class AddExamForward extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public AddExamForward() {
        super();
     
    }

	public static String idExam;
	public static int countExam;
	public static int soCau;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userLogin =LoginForward.name;
		Random rdt=new Random();
		idExam=Integer.toString( rdt.nextInt(10000));
		String nameExam=request.getParameter("nameExam");
		String timeStart=request.getParameter("timeStartExam");
		String timeEnd=request.getParameter("timeEndExam");
		int timeDo=Integer.parseInt(request.getParameter("timeDoExam"));
	    Double scoreExam=Double.parseDouble( request.getParameter("scoreExam"));
		countExam=Integer.parseInt(request.getParameter("countExam"));
	   Exam exam = new Exam(idExam,nameExam,timeStart,timeEnd,timeDo,userLogin,countExam,scoreExam);
	        try {
				AddExamDAO.insertExam(exam);
				RequestDispatcher rd=request.getRequestDispatcher("AddNewExam.jsp");
				rd.forward(request,response);
			} catch (SQLException e) {
				System.out.println("loi");
				e.printStackTrace();
			}
	        response.setContentType("text/html;charset=UTF-8");
			request.setCharacterEncoding("utf-8");
			String file=request.getParameter("namefile");
			List<Question> listQ=new ArrayList<>();
			listQ=ReadFileExcel.readfile(file);
			for(int i=0;i<listQ.size();i++)
			{
				//System.out.println(listQ.get(i).getContentQuestion());
				boolean insert=QuestionDAO.insertQuestion(listQ.get(i));
			}
	        
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
