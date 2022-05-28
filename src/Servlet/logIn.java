package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Objects.User;
import Service.LogInImplement;

//import com.sun.xml.internal.ws.util.StringUtils;
//import com.sun.xml.internal.ws.wsdl.writer.document.Service;

/**
 * Servlet implementation class logIn
 */
public class logIn extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public logIn() {
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
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		
		if(username.equals("")||password.equals("")) {
			request.setAttribute("emptyInput", "The Input Can Not Be Empty");
			request.getRequestDispatcher("logIn.jsp").forward(request, response);
		}
		
		LogInImplement objImplement = new LogInImplement();
		String result = objImplement.checkLogInService(username, password);
		if (result.equals("ERROR: User does not exist!")) {
			request.setAttribute("wrongUsername", "The Username is not Exist");
			request.getRequestDispatcher("logIn.jsp").forward(request, response);
		}
		
		else if (result.equals("ERROR: Wrong password!")) {
			request.setAttribute("wrongPassword", "The Password Is Wrong");
			request.getRequestDispatcher("logIn.jsp").forward(request, response);
		}
		else{
			System.out.println("tets1");
			if(result.equals("Normal user Log in successfully!") ){
				System.out.println("tets2");
				HttpSession hSession = request.getSession();
				hSession.setAttribute("username", username);
				hSession.setAttribute("usertype","normal user");
				hSession.setMaxInactiveInterval(20 * 60);
				
				response.sendRedirect("homepage.jsp");
				
			}else{
				System.out.println("tets3");
				HttpSession hSession = request.getSession();
				hSession.setAttribute("username", username);
				hSession.setAttribute("usertype","club user");
				hSession.setMaxInactiveInterval(20 * 60);
				
				response.sendRedirect("homepage.jsp");
			}
		}
		
		
	}

}
