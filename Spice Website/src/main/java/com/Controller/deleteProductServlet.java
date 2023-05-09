package com.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Dao.*;

/**
 * Servlet implementation class deleteProductServlet
 */
@WebServlet("/deleteProductServlet")
public class deleteProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public deleteProductServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
int pId = Integer.parseInt(request.getParameter("pId"));
		
		ProductDao pdao = new ProductDao();
		
		int i= pdao.deleteProduct(pId);
		
		if(i>0) {
			System.out.println("Deleted Succesfully 2");
			HttpSession httpSession = request.getSession();
			httpSession.setAttribute("message","Product Deleted Succesfully!!");
			response.sendRedirect("viewProducts.jsp");
			
		}else {
			System.out.println("Not Deleted 2!");
			/* session.setAttribute("message","Product not Deleted"); */
			response.sendRedirect("viewProducts.jsp");
			
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
