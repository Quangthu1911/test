package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.Exam;
import BEAN.Question;
import DAO.AddExamDAO;

@WebServlet("/AddQuestionExamForward")
public class AddQuestionExamForward extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AddQuestionExamForward() {
        super();
    }

    int dem=0;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		dem++;
		int countExam=AddExamForward.countExam;
		String idExam=AddExamForward.idExam;
		//String idExam="1";
		//int countExam=3;
		Random rd = new Random();
		int number1 = rd.nextInt(10000); 
		String questionID=Integer.toString(number1);
		String questionExam=request.getParameter("contentQuestion");
		String answerA=request.getParameter("answerA");
		String answerB=request.getParameter("answerB");
		String answerC=request.getParameter("answerC");
		String answerD=request.getParameter("answerD");
		String answerE=request.getParameter("answerE");
		String answerF=null;
		int type=0;
		String gettype=request.getParameter("Cate");
		if("1".equals(gettype))
		{
			type=1;
		}
		if("2".equals(gettype))
		{
			type=2;
		}
		if("3".equals(gettype))
		{
			type=3;
		}
		request.setAttribute("countExam1", dem+1);
		String answerTrue=request.getParameter("answerTrue");
		 Question question = new Question(questionID,idExam,questionExam,answerA,answerB,answerC,answerD,answerE,answerF,answerTrue,type);
				//Question question = new Question(questionID,idExam,"ererer","ferwwe","wre","wewe","wewrw","wew","erwer","A",1);
	        try {
				AddExamDAO.insertQuestionExam(question);
				if(countExam-dem>0)
				{
					RequestDispatcher rd1=request.getRequestDispatcher("AddNewExam.jsp");
					rd1.forward(request,response);
				}
				else {
			            RequestDispatcher rd1=request.getRequestDispatcher("ManagementExamTeacher.jsp?ExamID6="+LoginForward.UserLogin+"");
						rd1.forward(request,response);
				}
			} catch (SQLException e) {
				System.out.println("loi");
				e.printStackTrace();
			}
		
	}

}
