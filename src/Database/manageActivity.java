package Database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import com.mysql.cj.jdbc.result.ResultSetMetaData;
import com.mysql.cj.protocol.Resultset;

import Objects.activity;

public class manageActivity {
	
	public ArrayList<activity> list(String userID) {
		// TODO Auto-generated method stub
				Connection c = null;
				Statement s = null;
				ArrayList<activity> activitylist = new ArrayList<activity>();
				Startconnection();

				try {
					c = DriverManager.getConnection(
							"jdbc:mysql://127.0.0.1:3306/OCOC?useUnicode=true&characterEncoding=utf-8&useSSL=false", "root",
							"zhyn19990707");
					s = c.createStatement();

					
					String sql = "select * from OCOC.activity where clubuser_name="+"'"+userID+"'";
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
	
	public boolean add(activity act) {
		Connection c = null;
		PreparedStatement s = null;
		Startconnection();
		
		boolean flag = false;
		try {
			c = DriverManager.getConnection(
					"jdbc:mysql://127.0.0.1:3306/ococ?useUnicode=true&characterEncoding=utf-8&useSSL=false", "root",
					"zhyn19990707");
			s = c.prepareStatement("INSERT INTO activity(club_name,activity_name,location,ticket_num,time,type,introduction,clubuser_name,activity_id,club_id)" +
					"values('"+act.getClubname()+"','"+act.getActivityname()+"','"+act.getLocation()+"','"+act.getTicketNum()+"','"+act.getTime()+"','"+act.getType()+"','"+act.getDetailHref()+"','"+act.getClubuser()+",'0008',"+act.getClubId()+"')");
			
			int i = s.executeUpdate();
			if(i>0){
				flag = true;
			}
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			// 数据库的连接时有限资源，相关操作结束后，养成关闭数据库的好习惯
			// 先关闭Statement
			Closeconnection(s, c);

		}
		return flag;
	}
	
	public boolean delete(String activityID) {
		// TODO Auto-generated method stub
				Connection c = null;
				Statement s = null;
				
				Startconnection();

				try {
					c = DriverManager.getConnection(
							"jdbc:mysql://127.0.0.1:3306/OCOC?useUnicode=true&characterEncoding=utf-8&useSSL=false", "root",
							"zhyn19990707");
					s = c.createStatement();

					
					
					String sql1="delete from OCOC.activity where 'activity_id'="+"0008";
					ResultSet rs=s.executeQuery(sql1);
					while (rs.next()) {
						System.out.println("delete fail");
						return false;
					}
				}catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					return false;
				} finally {
					// 数据库的连接时有限资源，相关操作结束后，养成关闭数据库的好习惯
					// 先关闭Statement
					Closeconnection(s, c);

				}
					
				
				return true;
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
