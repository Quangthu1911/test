package wp.model;

public class LoginEntry1 {
	private String Name;
	private String Pass;
	public LoginEntry1() {}
	public LoginEntry1(String name,String pass)
	{
		this.Name=name;
		this.Pass=pass;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getPass() {
		return Pass;
	}
	public void setPass(String pass) {
		Pass = pass;
	}
}
