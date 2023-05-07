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
		User User=ld.validateUser(u);

		HttpSession session=request.getSession();
		session.setAttribute("User", User);
		
		if(User!=null) {
			System.out.println("Valid User");
			
//			login
			

			if(User.getUserType().equals("Admin")) {
//				admin :admin.jsp
				response.sendRedirect("admin.jsp");
				System.out.println("Admin Logged in ->");
			}
			
			else if(User.getUserType().equals("User")) {
//				normal user:normal.jsp
				response.sendRedirect("normal.jsp");
				System.out.println("User Logged in ->");
			}
			
			
//			response.sendRedirect("Dashboard.jsp");
		}else {
			System.out.println("Invalid User");
			System.out.println("");
			response.sendRedirect("Login.jsp");
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
