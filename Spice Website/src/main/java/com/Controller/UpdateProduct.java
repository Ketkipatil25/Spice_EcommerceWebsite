package com.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Dao.ProductDao;
import com.Model.Product;

/**
 * Servlet implementation class UpdateProduct
 */
@WebServlet("/UpdateProduct")
public class UpdateProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateProduct() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String pName = request.getParameter("pName").trim();
		double pPrice=Double.parseDouble(request.getParameter("pPrice"));
		String pDesc=request.getParameter("pDesc");
		int pDiscount=Integer.parseInt(request.getParameter("pDiscount"));
		int pQuantity=Integer.parseInt(request.getParameter("pQuantity"));
		String pPhoto=request.getParameter("pPhoto");
		String categoryId=request.getParameter("categoryId");
		
		Product p=new Product();
		p.setpName(pName);
		p.setpPrice(pPrice);
		p.setpDesc(pDesc);
		p.setpDiscount(pDiscount);
		p.setpQuantity(pQuantity);
		p.setpPhoto(pPhoto);
		p.setCategoryId(categoryId);
		
		ProductDao pdao=new ProductDao();
		int i=pdao.updateProduct(p);
		if(i>0) {
			System.out.println("Update Succesfully 2");
			
		}else {
			System.out.println("Not Updated 2!");
			
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
