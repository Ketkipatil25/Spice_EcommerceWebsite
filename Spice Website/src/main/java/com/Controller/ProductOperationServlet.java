package com.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Dao.CategoryDao;
import com.Dao.LoginDao;
import com.Model.*;
/**
 * Servlet implementation class ProductOperationServlet
 */
@WebServlet("/ProductOperationServlet")
public class ProductOperationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductOperationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
 
		String operation=request.getParameter("operation");
		if(operation.equals("addCategory")) {
//			add category
//			fetching category data
			String categoryId=request.getParameter("categoryId");
			String categoryTitle=request.getParameter("categoryTitle");
			String categoryDescription=request.getParameter("categoryDescription");
			
			Category c=new Category(categoryId,categoryTitle,categoryDescription);
			c.setCategoryId(categoryId);
			c.setCategoryTitle(categoryTitle);
			c.setCategoryDescription(categoryDescription);
			System.out.println(c.toString());
			CategoryDao cd=new CategoryDao();
			int i=cd.addCategory(c);
			if(i>0) {
				HttpSession httpsession=request.getSession();
				httpsession.setAttribute("message", "Category Added Succesfully!: "+categoryId);
				System.out.println("Category Added Succesfully!: "+categoryId);
				response.sendRedirect("admin.jsp");
				return;
			}else {
				System.out.println("Category Not Added!");
			}
		}
		else if(operation.equals("addProduct")) {
//			add product
			
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
