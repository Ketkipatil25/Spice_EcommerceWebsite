package com.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

public class HelperDao {
	public static Map<String, Double> getCount_User() {
		Connection con=MyConnection.getConnection();
		Map<String, Double> map=new HashMap<>();
		try {
			
			PreparedStatement ps=con.prepareStatement("SELECT COUNT(*) FROM user");
			ResultSet rs=ps.executeQuery();
			rs.next();
			double userCount=rs.getDouble(1);
			System.out.println("User Count:"+userCount);
			map.put("userCount", userCount);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		try {
			con.close();
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return map;
		
	}
	public static Map<String, Double> getCount_Category() {
		Connection con=MyConnection.getConnection();
		Map<String, Double> map=new HashMap<>();
		try {
			
			PreparedStatement ps=con.prepareStatement("SELECT COUNT(*) FROM category");
			ResultSet rs=ps.executeQuery();
			rs.next();
			double categoryCount=rs.getDouble(1);
			System.out.println("Category Count:"+categoryCount);
			map.put("categoryCount", categoryCount);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		try {
			con.close();
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return map;
		
	}
//	product helper
	
	}

