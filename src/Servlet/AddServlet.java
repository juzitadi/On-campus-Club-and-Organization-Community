package Servlet;
 
import java.io.IOException;
import java.sql.Timestamp;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Objects.activity;
import Database.manageActivity;

public class AddServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		activity act = new activity(null, null, null, 0, null, null, null, null, null, null);
		
		act.setClubname(request.getParameter("clubName"));
		System.out.println(request.getParameter("clubName"));
		
		act.setActivityname(request.getParameter("activityName"));
		act.setLocation(request.getParameter("location"));
		
		int ticketNmu = Integer.parseInt(request.getParameter("ticketNum"));
		act.setTicketNum(ticketNmu);
		
		act.setTime(request.getParameter("time"));
		
		act.setType(request.getParameter("type"));
		HttpSession hSession = request.getSession();
		String a = String.valueOf(hSession.getAttribute("username"));
		act.setClubuser(a);
		
		act.setDetailHref(request.getParameter("detailHref"));
		
		
		manageActivity ud = new manageActivity();
		ud.add(act);
		
		request.getRequestDispatcher("/ListServlet").forward(request, response);
		
	}
}