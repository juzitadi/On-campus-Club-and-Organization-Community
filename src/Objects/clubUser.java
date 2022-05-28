package Objects;

public class clubUser extends User{

	private String userName;
	private String password;
	private String email;
	private String major;
	private String gender;
	private int Grade;
	private boolean clubuser;
	private String club_id;
	private String position_id;

	public clubUser(String name, String password, String email, String major, String gender, int grade, boolean clubUser,String clubID, String positionID) {
		super(name, password, email, major, gender, grade,clubUser);
		this.userName = name;
		this.password = password;
		this.email = email;
		this.gender = gender;
		this.Grade = grade;
		this.clubuser=clubUser;
		this.club_id = clubID;
		this.position_id = positionID;
		
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
		this.Grade = grade;
	}

	public void setClubuser(boolean clubUser) {
		this.clubuser=clubUser;
	}
	public boolean getClubuser() {
		return clubuser;
	}
	public String getClub_id() {
		return club_id;
	}

	public void setClub_id(String club_id) {
		this.club_id = club_id;
	}

	public String getPosition_id() {
		return position_id;
	}

	public void setPosition_id(String position_id) {
		this.position_id = position_id;
	}

	

}
