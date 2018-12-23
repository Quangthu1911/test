package BEAN;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.AddExamDAO;
import DAO.InforTeacherDAO;
import DAO.QuestionDAO;
import controller.EditExamCenterGetIDForward;
import controller.LoginForward;

@WebServlet("/NextQuestionTeacherForward")
public class NextQuestionTeacherForward extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public NextQuestionTeacherForward() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		EditExamCenterGetIDForward.STT++;
		int t=Integer.parseInt( request.getParameter("btnFisnishExam"));
		if(t==2)
		{
			List<Question> lists;
			try {
				lists=QuestionDAO.DisplayQuestion(EditExamCenterGetIDForward.examID);
				String ContentQuestion=request.getParameter("Content");
				String AnswerA=request.getParameter("AnswerA");
				String AnswerB=request.getParameter("AnswerB");
				String AnswerC=request.getParameter("AnswerC");
				String AnswerD=request.getParameter("AnswerD");
				String AnswerE=request.getParameter("AnswerE");
				String AnswerTrue=request.getParameter("AnswerTrue");
				String AnswerF="hah";
				Question question=new Question(lists.get(EditExamCenterGetIDForward.STT-2).getQuestionID(),EditExamCenterGetIDForward.examID,ContentQuestion,AnswerA,AnswerB,AnswerC,AnswerD,AnswerE,AnswerF,AnswerTrue,lists.get(EditExamCenterGetIDForward.STT-2).getType());
				AddExamDAO.updateQuestionExam(question);
				RequestDispatcher rd=request.getRequestDispatcher("ManagementExamTeacher.jsp?ExamID6="+LoginForward.UserLogin+"");
				rd.forward(request,response);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		else
		{
			try {
				List<Question> lists=QuestionDAO.DisplayQuestion(EditExamCenterGetIDForward.examID);
					if(EditExamCenterGetIDForward.STT>lists.size())//Cau hoi cuoi cung
					{
						String ContentQuestion=request.getParameter("Content");
						String AnswerA=request.getParameter("AnswerA");
						String AnswerB=request.getParameter("AnswerB");
						String AnswerC=request.getParameter("AnswerC");
						String AnswerD=request.getParameter("AnswerD");
						String AnswerE=request.getParameter("AnswerE");
						String AnswerTrue=request.getParameter("AnswerTrue");
						String AnswerF="hah";
						Question question=new Question(lists.get(EditExamCenterGetIDForward.STT-2).getQuestionID(),EditExamCenterGetIDForward.examID,ContentQuestion,AnswerA,AnswerB,AnswerC,AnswerD,AnswerE,AnswerF,AnswerTrue,lists.get(EditExamCenterGetIDForward.STT-2).getType());
						AddExamDAO.updateQuestionExam(question);
						RequestDispatcher rd=request.getRequestDispatcher("ManagementExamTeacher.jsp?ExamID6="+LoginForward.UserLogin+"");
						rd.forward(request,response);
					//	System.out.println("Complete Exam");
					}
				
					else
					{
						if(EditExamCenterGetIDForward.STT>1)
						{
							request.setAttribute("STT", EditExamCenterGetIDForward.STT);
							//request.setAttribute("STT",NextQuestionTeacherForward.STT);
							request.setAttribute("ContentQuestion", lists.get(EditExamCenterGetIDForward.STT-2).getContentQuestion());
							request.setAttribute("AnswerA", lists.get(EditExamCenterGetIDForward.STT-2).getAnswerA());
							request.setAttribute("AnswerB", lists.get(EditExamCenterGetIDForward.STT-2).getAnswerB());
							request.setAttribute("AnswerC", lists.get(EditExamCenterGetIDForward.STT-2).getAnswerC());
							request.setAttribute("AnswerD", lists.get(EditExamCenterGetIDForward.STT-2).getAnswerD());
							request.setAttribute("AnswerE", lists.get(EditExamCenterGetIDForward.STT-2).getAnswerE());
							request.setAttribute("AnswerTrue",lists.get(EditExamCenterGetIDForward.STT-2).getAnswerTrue());
							String ContentQuestion=request.getParameter("Content");
							String AnswerA=request.getParameter("AnswerA");
							String AnswerB=request.getParameter("AnswerB");
							String AnswerC=request.getParameter("AnswerC");
							String AnswerD=request.getParameter("AnswerD");
							String AnswerE=request.getParameter("AnswerE");
							String AnswerTrue=request.getParameter("AnswerTrue");
							String AnswerF="hah";
							//System.out.println(ContentQuestion+"..."+AnswerTrue);
							//Question question=new Question("l;ke","HieuTran","Test1","Test2","Test3","Test4","Test","Test","Test","A",1);
							Question question=new Question(lists.get(EditExamCenterGetIDForward.STT-2).getQuestionID(),EditExamCenterGetIDForward.examID,ContentQuestion,AnswerA,AnswerB,AnswerC,AnswerD,AnswerE,AnswerF,AnswerTrue,lists.get(EditExamCenterGetIDForward.STT-2).getType());
							AddExamDAO.updateQuestionExam(question);
							RequestDispatcher rd=request.getRequestDispatcher("EditExamTeacher.jsp");
							rd.forward(request,response);
						}

				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		try {
			List<Question> lists=QuestionDAO.DisplayQuestion(EditExamCenterGetIDForward.examID);
				if(EditExamCenterGetIDForward.STT>lists.size())//Cau hoi cuoi cung
				{
					String ContentQuestion=request.getParameter("Content");
					String AnswerA=request.getParameter("AnswerA");
					String AnswerB=request.getParameter("AnswerB");
					String AnswerC=request.getParameter("AnswerC");
					String AnswerD=request.getParameter("AnswerD");
					String AnswerE=request.getParameter("AnswerE");
					String AnswerTrue=request.getParameter("AnswerTrue");
					String AnswerF="hah";
					Question question=new Question(lists.get(EditExamCenterGetIDForward.STT-2).getQuestionID(),EditExamCenterGetIDForward.examID,ContentQuestion,AnswerA,AnswerB,AnswerC,AnswerD,AnswerE,AnswerF,AnswerTrue,lists.get(EditExamCenterGetIDForward.STT-2).getType());
					AddExamDAO.updateQuestionExam(question);
					RequestDispatcher rd=request.getRequestDispatcher("GV.jsp");
					rd.forward(request,response);
				//	System.out.println("Complete Exam");
				}
			
				else
				{
					if(EditExamCenterGetIDForward.STT>1)
					{
						request.setAttribute("STT", EditExamCenterGetIDForward.STT);
						//request.setAttribute("STT",NextQuestionTeacherForward.STT);
						request.setAttribute("ContentQuestion", lists.get(EditExamCenterGetIDForward.STT-2).getContentQuestion());
						request.setAttribute("AnswerA", lists.get(EditExamCenterGetIDForward.STT-2).getAnswerA());
						request.setAttribute("AnswerB", lists.get(EditExamCenterGetIDForward.STT-2).getAnswerB());
						request.setAttribute("AnswerC", lists.get(EditExamCenterGetIDForward.STT-2).getAnswerC());
						request.setAttribute("AnswerD", lists.get(EditExamCenterGetIDForward.STT-2).getAnswerD());
						request.setAttribute("AnswerE", lists.get(EditExamCenterGetIDForward.STT-2).getAnswerE());
						request.setAttribute("AnswerTrue",lists.get(EditExamCenterGetIDForward.STT-2).getAnswerTrue());
						String ContentQuestion=request.getParameter("Content");
						String AnswerA=request.getParameter("AnswerA");
						String AnswerB=request.getParameter("AnswerB");
						String AnswerC=request.getParameter("AnswerC");
						String AnswerD=request.getParameter("AnswerD");
						String AnswerE=request.getParameter("AnswerE");
						String AnswerTrue=request.getParameter("AnswerTrue");
						String AnswerF="hah";
						//System.out.println(ContentQuestion+"..."+AnswerTrue);
						//Question question=new Question("l;ke","HieuTran","Test1","Test2","Test3","Test4","Test","Test","Test","A",1);
						Question question=new Question(lists.get(EditExamCenterGetIDForward.STT-2).getQuestionID(),EditExamCenterGetIDForward.examID,ContentQuestion,AnswerA,AnswerB,AnswerC,AnswerD,AnswerE,AnswerF,AnswerTrue,lists.get(EditExamCenterGetIDForward.STT-2).getType());
						AddExamDAO.updateQuestionExam(question);
						RequestDispatcher rd=request.getRequestDispatcher("EditExamTeacher.jsp");
						rd.forward(request,response);
					}

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void getParameter() {
		
		
	}
}
