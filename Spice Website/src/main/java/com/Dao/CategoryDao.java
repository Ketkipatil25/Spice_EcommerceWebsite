package com.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.Model.Category;
import com.Model.User;

public class CategoryDao {
	public int addCategory(Category c) {
		Connection con=MyConnection.getConnection();
		int i=0;
		try {
			PreparedStatement ps=con.prepareStatement("INSERT INTO category_table() VALUES(?,?,?)");
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
}
