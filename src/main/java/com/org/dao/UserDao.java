package com.org.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.org.dto.User;

public class UserDao {
	public void saveUser(User user)
	{
		
		
			try {
				
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/user_mgmt","root","system");
			PreparedStatement pst = con.prepareStatement("insert into user(name,age,mobile,email,password) values (?,?,?,?,?)");
		
			pst.setString(1, user.getName());
			pst.setString(2, user.getAge());
			pst.setString(3, user.getMobile());
			pst.setString(4, user.getEmail());
			pst.setString(5, user.getPassword());
			
			pst.executeUpdate(); 
			pst.close();
			
		} catch (SQLException | ClassNotFoundException e) {
			
			e.printStackTrace();
		}
		
	
	}
	
	public User loginUser(String email,String password)
	{
		User user=null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/user_mgmt","root","system");
			PreparedStatement pst = con.prepareStatement("select * from user where email=? and password=?");
			 
			pst.setString(1, email);
			pst.setString(2, password);
			
			ResultSet rs = pst.executeQuery();
			if(rs.next())
			{
				int id=rs.getInt("id");
				String name=rs.getString("name");
				String email1 = rs.getString("email");
				String mobile = rs.getString("mobile");
				String pwd = rs.getString("password");
				String age = rs.getString("age");
				
				
				user= new User();
				user.setId(id);
				user.setName(name);
				user.setAge(age);
				user.setEmail(email1);
				user.setMobile(mobile);
				user.setPassword(pwd);
				
				return user;
			}
			con.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;
		
		
	}
	



public List<User>fetchAllUsers()
{
	List<User> list=new ArrayList<User>();
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/user_mgmt","root","system");
		PreparedStatement pst = con.prepareStatement("select * from user");
		
		ResultSet rs = pst.executeQuery();
		while(rs.next()) {
			int id=rs.getInt("id");
			String name=rs.getString("name");
			String email1 = rs.getString("email");
			String mobile = rs.getString("mobile");
			String pwd = rs.getString("password");
			String age = rs.getString("age");
			
			
			User user= new User();
			user.setId(id);
			user.setName(name);
			user.setAge(age);
			user.setEmail(email1);
			user.setMobile(mobile);
			user.setPassword(pwd);
			
			list.add(user);
			
		}
		 
		
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	return list;
	
}


public User fetchUserById(int id)
{
	User user1=null;
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/user_mgmt","root","system");
		PreparedStatement pst = con.prepareStatement("select * from user where id=?");
		pst.setInt(1,id);
		
		ResultSet rs = pst.executeQuery();
		while(rs.next()) {
			
		
			int id1=rs.getInt("id");
			String name=rs.getString("name");
			String email1 = rs.getString("email");
			String mobile = rs.getString("mobile");
			String pwd = rs.getString("password");
			String age = rs.getString("age");
			
			
			user1= new User();
			user1.setId(id1);
			user1.setName(name);
			user1.setAge(age);
			user1.setEmail(email1);
			user1.setMobile(mobile);
			user1.setPassword(pwd);
			
		}
		
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	return user1;
}	
	


  public Boolean updateUserById(int id,User user)
  {
	  try {
		  Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/user_mgmt","root","system");
			PreparedStatement pst = con.prepareStatement("update user set name=?,age=?,mobile=?,email=?,password=? where id=? ");
			pst.setInt(1,id);
			
			pst.setString(1, user.getName());
			pst.setString(2, user.getAge());
			pst.setString(3, user.getMobile());
			pst.setString(4, user.getEmail());
			pst.setString(5, user.getPassword());
			pst.setInt(6, user.getId());
			
			
			int row = pst.executeUpdate();
			if(row==1)
			{
				return true;
			}
			
			
			
	  }
  
		
			catch (Exception e) {
		e.printStackTrace();
	}
	return false;
	  
  }
  
  
  public void deleteUserById(int id)
  {
	  try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/user_mgmt","root","system");
		PreparedStatement pst = con.prepareStatement("delete from user where id=?");
		pst.setInt(1, id);
		
		pst.executeUpdate();
		con.close();
		
	} catch (ClassNotFoundException | SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		
	  
  }
  
}
  
		  
  
  
    
	  
  



	




