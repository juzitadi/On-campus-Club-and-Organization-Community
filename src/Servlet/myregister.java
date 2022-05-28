package Servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import Service.RegisterImplement;
import Service.LogInImplement;

import java.awt.Color;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class myregister extends HttpServlet{
	private static final long serialVersionUID = 1L;
    
    /**
     * @see HttpServlet#HttpServlet()
     */
	public myregister() {
		super();
	}
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("username"); // TODO Auto-generated
		  String password = request.getParameter("password"); 
		  String Identity = request.getParameter("Identity"); 
		  String Gender = request.getParameter("Gender"); 
		  String Grade = request.getParameter("Grade");
		  String Major = request.getParameter("Major"); 
		  String Email = request.getParameter("email"); 
		  int grade = Integer.parseInt(Grade); 
		  
		  HttpSession hs = request.getSession(); 
		  hs.setAttribute("username", username);
		  hs.setAttribute("password", password); 
		  hs.setAttribute("email", Email);
		  hs.setAttribute("major", Major); 
		  hs.setAttribute("gender", Gender);
		  hs.setAttribute("grade", Grade);
		  if (String.valueOf(Identity).equals("Yes")) {
			 
			  response.sendRedirect("/ClubSystem/registerClub.jsp"); 
			  } else {
				  Map<String, String> map = result(username, password, Email, Major, Gender,grade); 
				  for (String info : map.keySet()) {
					  String values = map.get(info); 
					  if (values == "Successful registration.") {
						  System.out.println("username:" + username +"password:" + password +
								  "Identity:" + Identity + "Gender:" + Gender + "Grade:" + Grade + "Major:" + Major);
						  response.sendRedirect("/ClubSystem/userRegisterSuccess.jsp"); 
					  }
					  else if (values == "User already exists. Unsuccessful registration.") { 
						  request.setAttribute("error", "User already exists. Unsuccessful registration.");
						  request.getRequestDispatcher("myregister.jsp").forward(request, response); 
						  }
					   
					  } 
				  }
		  }

	private Map<String, String> result(String username, String password, String email, String major, String gender,
			int grade) {
		Map<String, String> resultMap = new HashMap();
		
		RegisterImplement objImplement = new RegisterImplement();
		String result = objImplement.checkAccount(username, password, email, major, gender, grade);
		
		switch (result) {
		case "User already exists. Unsuccessful registration.":
			resultMap.put("error", "User already exists. Unsuccessful registration.");
			break;

		case "Successful registration.":
			resultMap.put("successful", "Successful registration.");
			break;
		}

		return resultMap;
	}
}
