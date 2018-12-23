package BEAN;

import javax.management.loading.PrivateClassLoader;

public class listAddStudent {
	private String UserLogin;
	private String UserName;
	private String Address;
	private String Certi;
	private String ExamID;
	public String getExamID() {
		return ExamID;
	}
	public void setExamID(String examID) {
		ExamID = examID;
	}
	public String getUserLogin() {
		return UserLogin;
	}
	public void setUserLogin(String userLogin) {
		UserLogin = userLogin;
	}
	public String getUserName() {
		return UserName;
	}
	public void setUserName(String userName) {
		UserName = userName;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	public String getCerti() {
		return Certi;
	}
	public void setCerti(String certi) {
		Certi = certi;
	}
	public  listAddStudent() {
		// TODO Auto-generated constructor stub
	}
	public listAddStudent(String userLogin, String userName, String address, String certi, String examID) {
		super();
		UserLogin = userLogin;
		UserName = userName;
		Address = address;
		Certi = certi;
		ExamID=examID;
	}
	

}
