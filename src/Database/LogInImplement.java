package Database;

import Objects.User;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class LogInImplement implements LogInDatabase {

	public void Startconnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	public void Closeconnection(Statement s, Connection c) {
		if (s != null)
			try {
				s.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		// 后关闭Connection
		if (c != null)
			try {
				c.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

	}
	@Override
	public User queryLogInUser(String username, String password) {
		User result = new User("", "", "", "", "",0 , false);
		Connection c = null;
		Statement s = null;
		Startconnection();
		try {
			c = DriverManager.getConnection(
					"jdbc:mysql://127.0.0.1:3306/OCOC?useUnicode=true&characterEncoding=utf-8&useSSL=false", "root",
					"zhyn19990707");
			s = c.createStatement();
			
			String sql = "select * from OCOC.user where user_name = " + "'"+username+"'" ;

			// 执行查询语句，并把结果集返回给ResultSet
			ResultSet rs = s.executeQuery(sql);
			
			while (rs.next()) {
				result.setUserName(rs.getString(1));
				result.setPassword(rs.getString(2));
				result.setClubuser(rs.getBoolean(7));
				System.out.println(rs.getString(1));
				System.out.println(rs.getString(2));
				System.out.println(rs.getBoolean(7));
				
				return result;
			}
			
			

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			// 数据库的连接时有限资源，相关操作结束后，养成关闭数据库的好习惯
			// 先关闭Statement
			Closeconnection(s, c);

		}
		
		
		return result;
	}


}
