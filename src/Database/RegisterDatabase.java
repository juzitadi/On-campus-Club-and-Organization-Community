package Database;

public interface RegisterDatabase {
	boolean insertSuccessful_user(String username, String password, String email, String major, String gender, int grade, boolean clubUser);
	boolean insertSuccessful_clubUser(String username, String password, String email, String major, String gender, int grade, boolean clubUser, String clubID, String positionID);
	boolean checkAccountExist(String username);
}
