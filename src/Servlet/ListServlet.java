package Servlet;
 
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Objects.activity;
import Database.manageActivity;

public class ListServlet extends HttpServlet {
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
		
		HttpSession hs = request.getSession();
		String userIdString = (String) hs.getAttribute("username");

		manageActivity ud = new manageActivity();
		List<activity> goodsAll = ud.list(userIdString);
		
		
		request.setAttribute("listAll", goodsAll);
		request.getRequestDispatcher("/activities_list.jsp").forward(request, response);
	}
}