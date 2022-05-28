package Servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Service.RegisterImplement;

/**
 * Servlet implementation class registerClub
 */
public class registerClub extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public registerClub() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		String clubID = request.getParameter("club ID");
		String positionID = request.getParameter("position ID");
		String clubemail = request.getParameter("clubemail");

		HttpSession hs = request.getSession();

		String username = String.valueOf(hs.getAttribute("username"));
		String password = String.valueOf(hs.getAttribute("password"));
		String email = String.valueOf(hs.getAttribute("email"));
		String major = String.valueOf(hs.getAttribute("major"));
		String gender = String.valueOf(hs.getAttribute("gender"));
		String Grade = String.valueOf(hs.getAttribute("grade"));
		
				int grade = Integer.parseInt(Grade);
				
		
		Map<String, String> map = result(username, password, email, major, gender, grade, clubID, positionID);
		for (String info : map.keySet()) {
			String values = map.get(info);
			if (values == "Successful registration.") {
				hs.setAttribute("club ID", clubID);
				hs.setAttribute("position ID", positionID);
				hs.setAttribute("clubemail", clubemail);
				System.out.println("username: " + username +" password: " + password+ " Email: " + email+ " Major: " + major +
						   " Gender: " + gender + " Grade: " + grade + " Club ID : " + clubID+ " Position ID: " + positionID);
				response.sendRedirect("clubUserRegisterSuccess.jsp");
				  
			
			} else if (values == "User already exists. Unsuccessful registration.") {
				request.setAttribute("error", "User already exists. Unsuccessful registration.");
				request.getRequestDispatcher("registerClub.jsp").forward(request, response);
			}

		}
	}

	private Map<String, String> result(String name, String password, String email, String major, String gender,
			int grade, String clubID, String positionID) {
		Map<String, String> resultMap = new HashMap<>();

		RegisterImplement objImplement = new RegisterImplement();
		String result = objImplement.checkClubAccount(name, password, email, major, gender, grade, clubID, positionID);
		switch (result) {
		case "User already exists. Unsuccessful registration.":
			resultMap.put("error", "User already exists. Unsuccessful registration.");
			break;
			
		case "New user.":
			resultMap.put("successful", "Successful registration.");
			break;
		}

		return resultMap;
	}
}
