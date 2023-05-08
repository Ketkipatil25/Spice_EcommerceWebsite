package com.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.Model.Category;
import com.Model.Product;


public class ProductDao {
	public int addProduct(Product p) {
		Connection con=MyConnection.getConnection();
		int i=0;
		try {
			PreparedStatement ps=con.prepareStatement("INSERT INTO product(pId,pName,pPrice,pDesc,pDiscount,pQuantity,pPhoto,categoryId) VALUES(?,?,?,?,?,?,?,?)");
			ps.setInt(1, p.getpId());
			ps.setString(2, p.getpName());
			ps.setDouble(3, p.getpPrice());
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
	public List<Product> getAllProducts(){
		Connection con=MyConnection.getConnection();
		List<Product> plist =new ArrayList<>();
		try {
			PreparedStatement ps=con.prepareStatement("SELECT * FROM product");
			ResultSet rs=ps.executeQuery();
			
			while(rs.next()) {
				Product p=new Product();
				p.setpId(rs.getInt(1));
				p.setpName(rs.getString(2));
				p.setpPrice(rs.getDouble(3));
				p.setpDesc(rs.getString(4));
				p.setpDiscount(rs.getInt(5));
				p.setpQuantity(rs.getInt(6));
				p.setpPhoto(rs.getString(7));
				p.setCategoryId(rs.getString(8));
				plist.add(p);
			}
			System.out.println("Product List: "+plist);
			
		}catch(SQLException e) {
			e.printStackTrace();
		}
		try{
			con.close();
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return plist;
	}
public List<Product> getAllProductsById(String cid){
		
		Connection con=MyConnection.getConnection();
		List<Product> productbyidlist=new ArrayList<Product>();
		try {
			
			PreparedStatement ps=con.prepareStatement("SELECT * FROM product where categoryId = ?");
			ps.setString(1,cid);
			ResultSet rs=ps.executeQuery();
		
			
			while(rs.next()) {
				Product p=new Product();
				
				p.setpId(rs.getInt(1));
				p.setpName(rs.getString(2));
				p.setpPrice(rs.getDouble(3));
				p.setpDesc(rs.getString(4));
				p.setpDiscount(rs.getInt(5));
				p.setpQuantity(rs.getInt(6));
				p.setpPhoto(rs.getString(7));
				p.setCategoryId(rs.getString(8));
				productbyidlist.add(p);
			}
			System.out.println("Product List: "+productbyidlist);
		}catch(Exception e) {
			e.printStackTrace();
		}
		try {
			con.close();
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return productbyidlist;
	}
public Product getProductbyId(int pId) {
	Connection con=MyConnection.getConnection();
	Product p=new Product();
	try {
		PreparedStatement ps=con.prepareStatement("SELECT * FROM product WHERE pI=?");
		ps.setInt(1, pId);
		System.out.println("Product id:" +pId);
		
		ResultSet rs=ps.executeQuery();
		System.out.println(rs.getString(1));
		while(rs.next()) {
			p.setpId(rs.getInt(1));
			p.setpName(rs.getString(2));
			p.setpPrice(rs.getDouble(3));
			p.setpDesc(rs.getString(4));
			p.setpDiscount(rs.getInt(5));
			p.setpQuantity(rs.getInt(6));

			
		}
	}catch(Exception e) {
		e.printStackTrace();
	}
	try {
		con.close();
	}catch(SQLException e) {
		e.printStackTrace();
	}
	return p;
}
public int updateProduct(Product p) {
	Connection con=MyConnection.getConnection();
	int i=0;
	try {
		String sql = "update product set pName=?,pPrice=?,pDesc=?,pDiscount=?,pQuantity=?,categoryId=? where pId=?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, p.getpName());
		ps.setDouble(2, p.getpPrice());
		ps.setString(3, p.getpDesc());
		ps.setInt(4, p.getpDiscount());
		ps.setInt(5, p.getpQuantity());
		ps.setString(6, p.getCategoryId());
		i= ps.executeUpdate();
		if(i>0) {
			System.out.println("Product Updated Succesfully!");
		}else {
			System.out.println("Product Not Updated");
		}
		
	} catch (Exception e) {
		e.printStackTrace();
	}try {
		con.close();
	}catch(SQLException e) {
		e.printStackTrace();
	}

	return i;
}

public int deleteProduct(Product p) {
	Connection con=MyConnection.getConnection();
	int i=0;
	try {
		PreparedStatement ps = con.prepareStatement("delete from product where pId=?");
		ps.setInt(1, p.getpId());

		i = ps.executeUpdate();
		if(i>0) {
			System.out.println("Product Deleted Succesfully!");
		}else {
			System.out.println("Product Not Deleted");
		}
		
	} catch (Exception e) {
		e.printStackTrace();
	}try {
		con.close();
	}catch(SQLException e) {
		e.printStackTrace();
	}
	return i;
}
}
