package BEAN;

public class DetailExam {
	private String ExamID;
	private String ExamName;
	private int CountExam;
	private String ContentQuestion;
	private String AnswerA;
	private String AnswerB;
	private String AnswerC;
	private String AnswerD;
	private String AnswerE;
	public String getExamID() {
		return ExamID;
	}

	public void setExamID(String examID) {
		ExamID = examID;
	}

	public String getExamName() {
		return ExamName;
	}

	public void setExamName(String examName) {
		ExamName = examName;
	}

	public int getCountExam() {
		return CountExam;
	}

	public void setCountExam(int countExam) {
		CountExam = countExam;
	}

	public String getContentQuestion() {
		return ContentQuestion;
	}

	public void setContentQuestion(String contentQuestion) {
		ContentQuestion = contentQuestion;
	}

	public String getAnswerA() {
		return AnswerA;
	}

	public void setAnswerA(String answerA) {
		AnswerA = answerA;
	}

	public String getAnswerB() {
		return AnswerB;
	}

	public void setAnswerB(String answerB) {
		AnswerB = answerB;
	}

	public String getAnswerC() {
		return AnswerC;
	}

	public void setAnswerC(String answerC) {
		AnswerC = answerC;
	}

	public String getAnswerD() {
		return AnswerD;
	}

	public void setAnswerD(String answerD) {
		AnswerD = answerD;
	}

	public String getAnswerE() {
		return AnswerE;
	}

	public void setAnswerE(String answerE) {
		AnswerE = answerE;
	}

	public DetailExam() {
		// TODO Auto-generated constructor stub
	}

	public DetailExam(String examID, String examName, int countExam, String contentQuestion, String answerA,
			String answerB, String answerC, String answerD, String answerE) {
		super();
		ExamID = examID;
		ExamName = examName;
		CountExam = countExam;
		ContentQuestion = contentQuestion;
		AnswerA = answerA;
		AnswerB = answerB;
		AnswerC = answerC;
		AnswerD = answerD;
		AnswerE = answerE;
	}
	

}
