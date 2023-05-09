package com.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.Model.User;

public class LoginDao {
	public int insertUser(User u) {
		Connection con=MyConnection.getConnection();
		int i=0;
		try {
			PreparedStatement ps=con.prepareStatement("INSERT INTO user(username,name,email,password) VALUES(?,?,?,?)");
			ps.setString(1, u.getUsername());
			ps.setString(2, u.getName());
			ps.setString(3, u.getEmail());
			ps.setString(4, u.getPassword());
			i=ps.executeUpdate();		
			
			if(i>0) {
				System.out.println("User Registered");
			}
			else {
				System.out.println("User Not Registered");
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
public int checkRegister(User u) {
	Connection con=MyConnection.getConnection();
	int i=0;
	try {
		PreparedStatement ps=con.prepareStatement("SELECT * FROM user WHERE username=? OR email=?");
		ps.setString(1,u.getUsername());
		ps.setString(2,u.getEmail());
		System.out.println("Username: "+u.getUsername()+" Email: "+u.getEmail());
		ResultSet rs=ps.executeQuery();
		
		if(rs.next()) {
			System.out.println("User already registered!");
			System.out.println(u.getUsername()+" "+rs.getString(1));
			if(u.getUsername().trim().equals(rs.getString(1)) || u.getEmail().trim().equals(rs.getString(3)) ) {
				i=1;
			}
//			
		}
	}catch(SQLException e) {
		e.printStackTrace();
	}
	try {
		con.close();
	}catch(SQLException e) {
		e.printStackTrace();
	}
	return i;
	
}

public User validateUser(User u) {
	Connection con=MyConnection.getConnection();
	User u1=null;
	try {
		PreparedStatement ps=con.prepareStatement("SELECT * FROM user WHERE email=?");
		ps.setString(1,u.getEmail());
		System.out.println("Email: "+u.getEmail());
		ResultSet rs=ps.executeQuery();
		
		if(rs.next()) {
			System.out.println(u.getPassword()+" "+rs.getString(4));
			if(u.getPassword().equals(rs.getString(4))) {
				u1=new User(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5));
			}
			}
	}catch(SQLException e) {
		e.printStackTrace();
	}
	try {
		con.close();
	}catch(SQLException e) {
		e.printStackTrace();
	}
	return u1;
}
public List<User> getUsers(){
	Connection con=MyConnection.getConnection();
	List<User> ulist=new ArrayList<>();
	try {
		PreparedStatement ps=con.prepareStatement("SELECT * FROM user");
		ResultSet rs=ps.executeQuery();
		
		while(rs.next()) {
			User u=new User();
			u.setUsername(rs.getString(1));
			u.setName(rs.getString(2));
			u.setEmail(rs.getString(3));
			u.setPassword(rs.getString(4));
			ulist.add(u);
		}
		System.out.println("User List: "+ulist);
		
	}catch(SQLException e) {
		e.printStackTrace();
	}
	try{
		con.close();
	}catch(SQLException e) {
		e.printStackTrace();
	}
	return ulist;
}
}