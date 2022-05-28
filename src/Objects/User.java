package Objects;

public class User {
	private String userName;
	private String password;
	private String email;
	private String major;
	private String gender;
	private int Grade;
	private boolean clubUser;

	public User(String username, String password, String email, String major, String gender, int grade, boolean clubUser) {
		this.userName = username;
		this.password = password;
		this.email = email;
		this.major = major;
		this.gender = gender;
		this.Grade = grade;
		this.clubUser=clubUser;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "User [userName=" + userName + ", password=" + password + "]";
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMajor() {
		return major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getGrade() {
		return Grade;
	}

	public void setGrade(int grade) {
		Grade = grade;
	}
	
	public void setClubuser(boolean clubUser) {
		this.clubUser=clubUser;
	}
	
	public boolean getClubuser() {
		return clubUser;
	}
	

}
