package Database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;



import Objects.activity;

public class GetActivityImplement implements GetActivity{

	@Override
	public ArrayList<activity> result() {
		Connection c = null;
		Statement s = null;
		ArrayList<activity> activitylist = new ArrayList<activity>();
		Startconnection();

		try {
			c = DriverManager.getConnection(
					"jdbc:mysql://127.0.0.1:3306/OCOC?useUnicode=true&characterEncoding=utf-8&useSSL=false", "root",
					"zhyn19990707");
			s = c.createStatement();

			
			String sql = "select * from OCOC.activity";
			ResultSet rs = s.executeQuery(sql);
			while (rs.next()) {
				activity i = new activity(null,null,null,0,null,null,null,null,null,null);
				String clubname =rs.getString(1);
				String activityname =rs.getString(2);
				String location =rs.getString(3);
				int ticketNum = rs.getInt(4);
				String time = rs.getString(5);
				String type=rs.getString(6);
				String detailHref =rs.getString(7);
				String clubuser =rs.getString(8);
				String activityID =rs.getString(9);
				String comment =rs.getString(10);
				
				i.setClubname(clubname);
				i.setActivityname(activityname);
				i.setLocation(location);
				i.setTicketNum(ticketNum);
				i.setTime(time);
				i.setType(type);
				i.setClubuser(clubuser);
				i.setActivityID(activityID);
				i.setComment(comment);
				
				activitylist.add(i);
				
			}
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			// 数据库的连接时有限资源，相关操作结束后，养成关闭数据库的好习惯
			// 先关闭Statement
			Closeconnection(s, c);

		}
		
		return activitylist;
	}
	
	@Override
	public ArrayList<activity> searchResult(String keyword) {
		Connection c = null;
		Statement s = null;
		ArrayList<activity> searchedList = new ArrayList<activity>();
		Startconnection();
		StringBuilder sb = new StringBuilder();
		for (int i=0;i<keyword.length();i++) {
			sb.append("%");
			sb.append(keyword.charAt(i));
		}
		sb.append("%");
		String m_keyword = sb.toString();
		
		try {
			c = DriverManager.getConnection(
					"jdbc:mysql://127.0.0.1:3306/OCOC?useUnicode=true&characterEncoding=utf-8&useSSL=false", "root",
					"zhyn19990707");
			s = c.createStatement();

			
			String sql = " SELECT * from activity where club_name like '"+m_keyword+"' OR activity_name like '"+m_keyword+"' OR location like '"+m_keyword+"'  OR type like '"+m_keyword+"' OR date_format(time, '%Y-%m-%d %H:%i:%s') like '"+m_keyword+"';";
			
			ResultSet rs = s.executeQuery(sql);
			while (rs.next()) {
				activity i = new activity(null,null,null,0,null,null,null,null,null,null);
				String clubname =rs.getString(1);
				String activityname =rs.getString(2);
				String location =rs.getString(3);
				int ticketNum = rs.getInt(4);
				String time = rs.getString(5);
				String type=rs.getString(6);
				String detailHref =rs.getString(7);
				String clubuser =rs.getString(8);
				String activityID =rs.getString(9);
				String comment =rs.getString(10);
				
				i.setClubname(clubname);
				i.setActivityname(activityname);
				i.setLocation(location);
				i.setTicketNum(ticketNum);
				i.setTime(time);
				i.setType(type);
				i.setClubuser(clubuser);
				i.setActivityID(activityID);
				i.setComment(comment);
				
				searchedList.add(i);
				
			}
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			// 数据库的连接时有限资源，相关操作结束后，养成关闭数据库的好习惯
			// 先关闭Statement
			Closeconnection(s, c);

		}
		
		return searchedList;
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
