package com.Controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.Dao.CategoryDao;
import com.Dao.LoginDao;
import com.Dao.ProductDao;
import com.Model.*;
/**
 * Servlet implementation class ProductOperationServlet
 */
@WebServlet("/ProductOperationServlet")
@MultipartConfig
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

		System.out.println(request.getParameter("operation"));
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
//			work
			int pId=Integer.parseInt(request.getParameter("pId"));
			String pName=request.getParameter("pName");
			int pPrice=Integer.parseInt(request.getParameter("pPrice"));
			String pDesc=request.getParameter("pDesc");
			int pDiscount=Integer.parseInt(request.getParameter("pDiscount"));
			int pQuantity=Integer.parseInt(request.getParameter("pQuantity"));
			String categoryId=request.getParameter("categoryId");
			
			Part part=request.getPart("pPic");
//			
			Product p=new Product();
			p.setpId(pId);
			p.setpName(pName);
			p.setpDesc(pDesc);
			p.setpPrice(pPrice);
			p.setpDiscount(pDiscount);
			p.setpQuantity(pQuantity);
			p.setpPhoto(part.getSubmittedFileName());
			
//			upload 2:
			
			String filename=part.getSubmittedFileName();
			System.out.println("filename: "+filename);
			
			
			
			
			try {
				ProductDao pdao=new ProductDao();
				pdao.addProduct(p);
				String path=request.getRealPath("img")+File.separator+"products"+File.separator+part.getSubmittedFileName();
				System.out.println(path);

				FileOutputStream fos=new FileOutputStream(path);
				InputStream is=part.getInputStream();
//				
				byte[] data=new byte[is.available()];
				is.read(data);
				fos.write(data);
				fos.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
//			get category by id
			
//			CategoryDao cdao=new CategoryDao();
//			String categoryId_product=cdao.getCategoryIdById(categoryId);
			System.out.println(categoryId.trim().length());
			p.setCategoryId(categoryId.trim());
//
//			System.out.println("Starts here");
//			Part part=request.getPart("pPic");
//			String filename=part.getSubmittedFileName();
//			System.out.println("filename: "+filename);
//			
//			
//			System.out.println(p);
//			
//			ProductDao pdao=new ProductDao();
//			pdao.addProduct(p);
			
//			
//			try {
////			uploading code
//			FileOutputStream fos=new FileOutputStream(path);
//			InputStream is=part.getInputStream();
//			
////			reading data
//			
//			byte []data=new byte[is.available()];
//			is.read(data);
//			
////			writing the data
//			fos.write(data);
//			fos.close();
//			}catch(Exception e) {
//				e.printStackTrace();
//			}
//			
//			
			
			
//			Part file=request.getPart("pPic");
//			String imageFilename=file.getSubmittedFileName();
//			System.out.println("Filename: "+imageFilename);
//			String uploadPath="C:/Users/jdpha/OneDrive/Desktop/DBMS/Spice Website/src/main/webapp/img"+File.separator+imageFilename;
//
//		
//			p.setpPhoto(imageFilename);
//
//			System.out.println("P:"+p);
//			System.out.println("Path"+uploadPath);
//			
//			try {
//			FileOutputStream fos=new FileOutputStream(uploadPath);
//			InputStream is=file.getInputStream();
//			
//			byte[] data=new byte[is.available()];
//			is.read(data);
//			fos.write(data);
//			fos.close();
//			}
//			catch(Exception e) {
//				e.printStackTrace();
//			}
//			
//			pic upload
			
//			String path=request.getServletContext().getRealPath("img")+File.separator+"products"+File.separator+part.getSubmittedFileName();
//			System.out.println(path);
//			try {
//			uploading code
//			FileOutputStream fos=new FileOutputStream(path);
//			InputStream is=part.getInputStream();
			
//			reading data
			
//			byte []data=new byte[is.available()];
//			is.read(data);
			
//			writing the data
//			fos.write(data);
//			fos.close();
//			}catch(Exception e) {
//				e.printStackTrace();
//			}
			
			
//			if(i>0) {
			System.out.println("Product Added Successfully--2");
			HttpSession httpSession = request.getSession();
			httpSession.setAttribute("message", "Product Succesfully Added: "+pId);
			response.sendRedirect("admin.jsp");
//			}else {
//				System.out.println("Product Not Added!");
//				response.sendRedirect("admin.jsp");
			}
			
		}
		
//	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
