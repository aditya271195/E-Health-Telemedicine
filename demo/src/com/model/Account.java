package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.beans.Answer;

public class Account {

	String username = "root";
	String passwrd="";
	String dbname="ehealth";
	String url="jdbc:mysql://localhost:3306/";
	String driver = "com.mysql.jdbc.Driver";
	
	public void insert(String name, String email, String password) throws ClassNotFoundException, SQLException {
		//STEP 2  -- Load the Driver
		Class.forName(driver);
		//Step 3 -- create connection
		
		Connection con  =DriverManager.getConnection(url+dbname,username,passwrd);
		
		//Step 4 -- Query execute
		String sql="insert into user(name,email,password) values (?,?,?)";
		PreparedStatement pstmt = con.prepareStatement(sql);
		
		pstmt.setString(1, name);
		pstmt.setString(2, email);
		pstmt.setString(3, password);
	
		pstmt.executeUpdate();
		
		pstmt.close();
		con.close();
	}
	public void insertque(String question, String email) throws ClassNotFoundException, SQLException {
		//STEP 2  -- Load the Driver
		Class.forName(driver);
		//Step 3 -- create connection
		
		Connection con  =DriverManager.getConnection(url+dbname,username,passwrd);
		
		//Step 4 -- Query execute
		String sql="insert into question(email,question) values (?,?)";
		PreparedStatement pstmt = con.prepareStatement(sql);
		
		pstmt.setString(1,email);
		pstmt.setString(2, question);
	
		pstmt.executeUpdate();
		
		pstmt.close();
		con.close();
		
	}
	public void insertDocdb(String nam, String email, String password,String degree,String contact,String category) throws ClassNotFoundException, SQLException {
		//STEP 2  -- Load the Driver
		Class.forName(driver);
		//Step 3 -- create connection
		
		Connection con  =DriverManager.getConnection(url+dbname,username,passwrd);
		
		//Step 4 -- Query execute
	String sql="insert into doctor(nam,email,password,degree,contact,category) values (?,?,?,?,?,?)";
		PreparedStatement pstmt = con.prepareStatement(sql);
		
		pstmt.setString(1, nam);
		pstmt.setString(2, email);
		
		pstmt.setString(3, password);
		pstmt.setString(4, degree);
		
		pstmt.setString(5, contact);
		pstmt.setString(6, category);
	
		
		pstmt.executeUpdate();
		
		pstmt.close();
		con.close();
	}

	public boolean check(String email, String password) throws Exception {
		
		int count=0;
		//STEP 2  -- Load the Driver
		
		Class.forName(driver);
		//Step 3 -- create connection
		
		Connection con  =DriverManager.getConnection(url+dbname,username,passwrd);
		
		//Step 4 -- Query execute
				String sql="select * from doctor where email=? AND password=?";
				PreparedStatement pstmt = con.prepareStatement(sql);
				
				pstmt.setString(1, email);
				pstmt.setString(2, password);	
				
				ResultSet rst  =pstmt.executeQuery();
				
				while(rst.next()){
					count=1;
				}
				pstmt.close();
				con.close();
				if(count == 1)
					return true;
		return false;
				
				
		
		
	}
public boolean checkUser(String email, String password) throws Exception {
		
		int count=0;
		//STEP 2  -- Load the Driver
		
		Class.forName(driver);
		//Step 3 -- create connection
		
		Connection con  =DriverManager.getConnection(url+dbname,username,passwrd);
		
		//Step 4 -- Query execute
				String sql="select * from user where email=? AND password=?";
				PreparedStatement pstmt = con.prepareStatement(sql);
				
				pstmt.setString(1, email);
				pstmt.setString(2, password);	
				
				ResultSet rst  =pstmt.executeQuery();
				
				while(rst.next()){
					count=1;
				}
				pstmt.close();
				con.close();
				if(count == 1)
					return true;
		return false;
				
				
		
		
	}
public void insertUserQue(String email, String question) throws Exception  {
	//STEP 2  -- Load the Driver
			Class.forName(driver);
			//Step 3 -- create connection
			
			Connection con  =DriverManager.getConnection(url+dbname,username,passwrd);
			
			//Step 4 -- Query execute
			String sql="insert into userque(email,question) values (?,?)";
			PreparedStatement pstmt = con.prepareStatement(sql);
			
		
			pstmt.setString(1, email);
			pstmt.setString(2, question);
			
		
			pstmt.executeUpdate();
			
			pstmt.close();
			con.close();
}
public void insertans(String answer, String userque_id) throws Exception{
	Class.forName(driver);
	//Step 3 -- create connection
	
	Connection con  =DriverManager.getConnection(url+dbname,username,passwrd);
	
	//Step 4 -- Query execute
	String sql="insert into answer(answer,userque_id) values (?,?)";
	PreparedStatement pstmt = con.prepareStatement(sql);
	

	pstmt.setString(1, answer);
	pstmt.setString(2, userque_id);
	

	pstmt.executeUpdate();
	
	pstmt.close();
	con.close();
	}
public void bookappointment(String name, String contact, String category,String doctor, String date, String time) throws Exception {
	Class.forName(driver);
	//Step 3 -- create connection
	
	Connection con  =DriverManager.getConnection(url+dbname,username,passwrd);
	
	//Step 4 -- Query execute
	String sql="insert into book_appt(name,contact,category,doctor,date,time) values (?,?,?,?,?,?)";
	PreparedStatement pstmt = con.prepareStatement(sql);
	

	pstmt.setString(1, name);
	pstmt.setString(2, contact);
	pstmt.setString(3,category );
	pstmt.setString(4,doctor);
	pstmt.setString(5,date );
	pstmt.setString(6,time);
	
	

	pstmt.executeUpdate();
	
	pstmt.close();
	con.close();
	
	
}

}
