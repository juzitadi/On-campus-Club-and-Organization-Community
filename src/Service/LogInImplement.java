package Service;

import Objects.User;

public class LogInImplement implements LogInService{
	
	
	@Override
	public String checkLogInService(String username, String password) {
		Database.LogInImplement obj = new Database.LogInImplement();
		User user = obj.queryLogInUser(username,password);
		
		
		String result = "";
		if( user.getUserName() == "") {
			result = "ERROR: User does not exist!";
		} 
		
		else if(user.getPassword().equals(password)){
			System.out.println(user.getClubuser());
			if(user.getClubuser()==true) {
				
				System.out.println("tets4");
				result="Clubuser log in successfully";
			}else {
				System.out.println("tets5");
			result = "Normal user Log in successfully!";
			}
		}
		
		else if(!user.getPassword().equals(password)){
			result = "ERROR: Wrong password!";
		}
		
		return result;
	
	}
}
