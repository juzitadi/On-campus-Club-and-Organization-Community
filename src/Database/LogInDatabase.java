package Database;

import Objects.User;

public interface LogInDatabase {
	User queryLogInUser(String username, String password);
}
