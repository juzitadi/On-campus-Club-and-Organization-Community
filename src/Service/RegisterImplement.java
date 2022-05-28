package Service;

import Objects.User;

public class RegisterImplement implements register{
	
	
	@Override
	public String checkAccount(String username, String password, String email, String major, String gender, int grade) {
		Database.RegisterImplement b = new Database.RegisterImplement();
		boolean check = b.checkAccountExist(username);
		String result = "";
		if(check == true) {
			result = "User already exists. Unsuccessful registration.";
		}
		else {
			boolean clubUser=false;
			boolean insertuser = b.insertSuccessful_user(username, password, email, major, gender, grade,clubUser);
			if(insertuser == true) {
				result = "Successful registration.";
			}
		}
		return result;
	}
	
	public String checkClubAccount(String name, String password, String email, String major, String gender, int grade, String clubID, String positionID) {

		Database.RegisterImplement b = new Database.RegisterImplement();
		boolean check = b.checkAccountExist(name);
		
		String result = "";
		if(check == true) {
			result = "User already exists. Unsuccessful registration.";
		}
		else {
			/*
			 * boolean insertuser = b.insertSuccessful_user(name, password, email, major,
			 * gender, grade);
			 */
			boolean clubUser=true;
			boolean insertclubuser = b.insertSuccessful_clubUser(name, password, email, major, gender, grade,clubUser, clubID, positionID);
			if(insertclubuser == true) {
				result = "New user.";
			}
		}
		return result;
	}
}
