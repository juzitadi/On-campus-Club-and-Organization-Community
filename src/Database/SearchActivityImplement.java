package Database;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import Objects.activity;


public class SearchActivityImplement implements SearchActivityDatabase{


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
	public ArrayList<activity> SearchResult(String input, String category) {
		// TODO Auto-generated method stub
				Connection c = null;
				Statement s = null;
				ArrayList<activity> searchlist = new ArrayList<activity>();
				Startconnection();
				String sql = "";
				try {
					c = DriverManager.getConnection(
							"jdbc:mysql://127.0.0.1:3306/OCOC?useUnicode=true&characterEncoding=utf-8&useSSL=false", "root",
							"zhyn19990707");
					s = c.createStatement();
					if(category.equals("Name")) {
						sql="select * from OCOC.activity where activity_name="+"'"+input+"'";
					}else if(category.equals("Category")){
						sql="select * from OCOC.activity where type="+"'"+input+"'";
					}else {
						sql="select * from OCOC.activity where club_name="+"'"+input+"'";
					}
					
					
					ResultSet rs = s.executeQuery(sql);
					while (rs.next()) {
						activity i = new activity(null,null,null,0,null,null,null,null,null,null);
						String clubname =rs.getString(1);
						String activityname =rs.getString(2);
						String location =rs.getString(3);
						int ticketNum = rs.getInt(4);
						String time=rs.getString(5);
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
						
						searchlist.add(i);

					}
					
				}catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} finally {
					// 数据库的连接时有限资源，相关操作结束后，养成关闭数据库的好习惯
					// 先关闭Statement
					Closeconnection(s, c);

				}
					
				return searchlist;
	}
}
