
package com.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

import com.Model.Category;

public class CategoryDao {
	public int addCategory(Category c) {
		Connection con=MyConnection.getConnection();
		int i=0;
		try {
			PreparedStatement ps=con.prepareStatement("INSERT INTO category() VALUES(?,?,?)");
			ps.setString(1, c.getCategoryId());
			ps.setString(2, c.getCategoryTitle());
			ps.setString(3, c.getCategoryDescription());
			
			i=ps.executeUpdate();		
			
			if(i>0) {
				System.out.println("Category Added Successfully!");
			}
			else {
				System.out.println("Category not added");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		try {
			con.close();
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return i;
	}
	
	public List<Category> getCategories(){
		Connection con=MyConnection.getConnection();
		List<Category> categorylist=new ArrayList<Category>();
		try {
			
			PreparedStatement ps=con.prepareStatement("SELECT * FROM category");
			ResultSet rs=ps.executeQuery();
		
			
			while(rs.next()) {
				Category c=new Category();
				c.setCategoryId(rs.getString(1));
				c.setCategoryTitle(rs.getString(2));
				c.setCategoryDescription(rs.getString(3));
				categorylist.add(c);
			}
			System.out.println("Category List: "+categorylist);
		}catch(Exception e) {
			e.printStackTrace();
		}
		try {
			con.close();
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return categorylist;
	}
	
	public String getCategoryIdById(String categoryId) {
		Connection con=MyConnection.getConnection();
		Category c=new Category();
		try {
			PreparedStatement ps=con.prepareStatement("SELECT * FROM category WHERE categoryId=?");
			ps.setString(1, categoryId);
			System.out.println("CategoryId:"+categoryId );
			
			ResultSet rs=ps.executeQuery();
			System.out.println(rs.getString(1));
			while(rs.next()) {
				c.setCategoryId(categoryId);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		try {
			con.close();
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return c.getCategoryId();
	}
	
}
