package Servlet;

import java.io.IOException;
import java.util.ArrayList;
import Objects.activity;
import Service.ActivitySortingImplement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet;

import javax.servlet.http.HttpSession;

/*import com.sun.xml.internal.ws.wsdl.writer.document.Service;*/

import Objects.activity;

/**
 * Servlet implementation class showActivity
 */

public class showActivity extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public showActivity() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
//		System.out.print("11212121");
//		String whichBtn = request.getParameter("sorting");
//		System.out.println("whichbtn"+whichBtn);
//		request.setAttribute("activityList", result(whichBtn));
		ArrayList<activity> resultActivities = result("Date");
		for (int j =0;j<resultActivities.size();j++) {
			System.out.println(resultActivities.get(j).toString());
		}
		HttpSession hs = request.getSession();
		hs.setAttribute("sortedActivitiesList", resultActivities);
		
	}
	
	private ArrayList<activity> result(String button){
		ArrayList<activity> resultActivities = null;
		ActivitySortingImplement r = new ActivitySortingImplement();
		
		if("Date".equals(button)){
		     resultActivities = r.time();
		}
		if("Storage".equals(button)){
		     resultActivities = r.remainTicket();
		}
		return resultActivities;
	}
	
	
	

}
