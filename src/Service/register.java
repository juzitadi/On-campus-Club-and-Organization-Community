package Service;


public interface register {
	String checkAccount(String username, String password, String email, String major, String gender, int grade);
	String checkClubAccount(String name, String password, String email, String major, String gender, int grade, String clubID, String positionID);
}
