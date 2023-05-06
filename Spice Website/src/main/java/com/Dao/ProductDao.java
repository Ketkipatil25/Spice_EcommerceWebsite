package com.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.Model.Product;

public class ProductDao {
	public int addProduct(Product p) {
		Connection con=MyConnection.getConnection();
		int i=0;
		try {
			PreparedStatement ps=con.prepareStatement("INSERT INTO product(pId,pName,pPrice,pDesc,pDiscount,pQuantity,pPhoto,categoryId) VALUES(?,?,?,?,?,?,?,?)");
			ps.setInt(1, p.getpId());
			ps.setString(2, p.getpName());
			ps.setInt(3, p.getpPrice());
			ps.setString(4, p.getpDesc());
			ps.setInt(5, p.getpDiscount());
			ps.setInt(6, p.getpQuantity());
			ps.setString(7, p.getpPhoto());
			ps.setString(8, p.getCategoryId());
			i=ps.executeUpdate();
			if(i>0) {
				System.out.println("Product Succesfully Added!");
			}else {
				System.out.println("Product Not Added");
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		try{
			con.close();
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return i;
	}
}
