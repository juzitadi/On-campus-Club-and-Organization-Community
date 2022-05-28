package Database;

import Objects.User;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class RegisterImplement implements RegisterDatabase {

	@Override
	public boolean insertSuccessful_user(String username, String password, String email, String major, String gender,
			int grade, boolean clubUser) {
		// TODO Auto-generated method stub

		// 若用户未填写major、gender、grade，需用null或0补全
		Connection c = null;
		Statement s = null;
		System.out.println("checkinsertsuccessfully");
		Startconnection();

		try {
			c = DriverManager.getConnection(
					"jdbc:mysql://127.0.0.1:3306/OCOC?useUnicode=true&characterEncoding=utf-8&useSSL=false", "root",
					"zhyn19990707");
			s = c.createStatement();

			String sql = "insert into OCOC.user values ('" + username + "'" + "," + "'" + password + "'" + "," + "'"
					+ email + "'" + "," + "'" + major + "'" + "," + "'" + gender + "'" + "," + "'" + grade + "'" +","+ "'"+clubUser+"'"+")";

			// 执行查询语句，并把结果集返回给ResultSet
			s.execute(sql);

			System.out.println("insert successfully");
			return true;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			// 数据库的连接时有限资源，相关操作结束后，养成关闭数据库的好习惯
			// 先关闭Statement
			Closeconnection(s, c);

		}
		return false;
	}

	@Override
	public boolean insertSuccessful_clubUser(String username, String password, String email, String major,
			String gender, int grade, boolean clubUser,String clubID, String positionID) {

		// 若用户未填写major、gender、grade，需用null或0补全
		Connection c = null;
		Statement s = null;

		Startconnection();

		try {
			c = DriverManager.getConnection(
					"jdbc:mysql://127.0.0.1:3306/OCOC?useUnicode=true&characterEncoding=utf-8&useSSL=false", "root",
					"zhyn19990707");
			s = c.createStatement();

			String sql = "insert into club_user values ('" + username + "'" + "," + "'" + password + "'" + "," + "'"
					+ email + "'" + "," + "'" + major + "'" + "," + "'" + gender + "'" + "," + "'" + grade + "'" + ","+"'"+clubUser+"'"+","
					+ "'" + clubID + "'" + "," + "'" + positionID + "'" + ")";

			// 执行查询语句，并把结果集返回给ResultSet
			s.execute(sql);

			System.out.println("insert into club_user table successfully");
			String sql1 = "insert into OCOC.user values ('" + username + "'" + "," + "'" + password + "'" + "," + "'"
					+ email + "'" + "," + "'" + major + "'" + "," + "'" + gender + "'" + "," + "'" + grade + "'" +","+"'"+clubUser+"'"+ ")";

			// 执行查询语句，并把结果集返回给ResultSet
			s.execute(sql1);

			System.out.println("insert into user successfully");
			return true;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			// 数据库的连接时有限资源，相关操作结束后，养成关闭数据库的好习惯
			// 先关闭Statement
			Closeconnection(s, c);

		}
		return false;
	}

	@Override
	public boolean checkAccountExist(String username) {
		// TODO Auto-generated method stub
		Connection c = null;
		Statement s = null;

		Startconnection();

		try {
			c = DriverManager.getConnection(
					"jdbc:mysql://127.0.0.1:3306/OCOC?useUnicode=true&characterEncoding=utf-8&useSSL=false", "root",
					"zhyn19990707");
			s = c.createStatement();

			String sql = "select * from user where user_name= '" + username + "'";
			String sql1 = "select * from club_user where user_name= '" + username + "'";

			// 执行查询语句，并把结果集返回给ResultSet
			ResultSet rs = s.executeQuery(sql);
			if (rs.next()) {
				return true;
			} else {
				ResultSet rs1 = s.executeQuery(sql1);
				if (rs1.next()) {
					return true;
				}
			}
			return false;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			// 数据库的连接时有限资源，相关操作结束后，养成关闭数据库的好习惯
			// 先关闭Statement
			Closeconnection(s, c);

		}
		return false;
	}

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

}
