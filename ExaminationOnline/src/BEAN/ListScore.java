package BEAN;

public class ListScore {
	
	private String UserLogin;
	private String ExamID;
	private String ExamName;
	public String getExamName() {
		return ExamName;
	}
	public void setExamName(String examName) {
		ExamName = examName;
	}
	private float diem;
	private String nameStudent;
	public ListScore () {
		
	}
	public ListScore(String userLogin, String examID,String examName, float diem, String nameStudent) {
		super();
		UserLogin = userLogin;
		ExamID = examID;
		ExamName=examName;
		this.diem = diem;
		this.nameStudent = nameStudent;
	}
	public String getUserLogin() {
		return UserLogin;
	}
	public void setUserLogin(String userLogin) {
		UserLogin = userLogin;
	}
	public String getExamID() {
		return ExamID;
	}
	public void setExamID(String examID) {
		ExamID = examID;
	}
	public float getDiem() {
		return diem;
	}
	public void setDiem(float diem) {
		this.diem = diem;
	}
	public String getNameStudent() {
		return nameStudent;
	}
	public void setNameStudent(String nameStudent) {
		this.nameStudent = nameStudent;
	}
	
}
