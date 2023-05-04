package com.Controller;
import com.Dao.*;
import com.Model.*;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.Model.User;
/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		
		
		User u=new User();
		u.setEmail(email);
		u.setPassword(password);
		
		LoginDao ld=new LoginDao();
		System.out.println("password:"+password);
//		-------------->check from here???????
		User u1=ld.validateUser(u);

		HttpSession session=request.getSession();
//		session.setAttribute("username", username);
		
		if(u1!=null) {
			System.out.println("Valid User");
			
//			login
			session.setAttribute("User", u1);
//			User user=(User)session.getAttribute("username");
			
//			if(username.getUserType().equals("admin")) {
////				admin :admin.jsp
//				response.sendRedirect("admin.jsp");
//			}
//			
//			else if(username.getUserType().equals("normal")) {
////				normal user:normal.jsp
//				response.sendRedirect("normal.jsp");
//			}
			
			if(u1.getUserType().equals("Admin")) {
//				admin :admin.jsp
				response.sendRedirect("admin.jsp");
				System.out.println("Admin Logged in ->");
			}
			
			else if(u1.getUserType().equals("User")) {
//				normal user:normal.jsp
				response.sendRedirect("normal.jsp");
				System.out.println("User Logged in ->");
			}
			
			
//			response.sendRedirect("Dashboard.jsp");
		}else {
			System.out.println("Invalid User");
			System.out.println("");
			response.sendRedirect("Register.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
