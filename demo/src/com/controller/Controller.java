package com.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.beans.Question;
import com.model.Account;


public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action=request.getParameter("action");
		if(action==null){
			request.getRequestDispatcher("jsps/main/index.jsp").forward(request, response);
		}else{
			doPost(request, response);
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action=request.getParameter("action");
		if(action.equals("about_us")){
			
			request.getRequestDispatcher("jsps/main/aboutus.jsp").forward(request, response);
		
	}
			if(action.equals("contact_us")){
			
			request.getRequestDispatcher("jsps/main/contact_us.jsp").forward(request, response);
			}
		if(action.equals("contact_us_form")){
			String email=request.getParameter("email");
			String question=request.getParameter("question");
			HttpSession session=request.getSession();
			session.setAttribute("email",email);
			 Account a=new Account();
			 Question q=new Question();
			 q.setEmail(email);
			 q.setQuestion(question);
			try {
				a.insertque(question, email);
					
					 
				
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			 request.getRequestDispatcher("jsps/main/notification.jsp").forward(request, response);
			
		}
		
			
			 
if(action.equals("upload_later")){
			
			request.getRequestDispatcher("jsps/main/index.jsp").forward(request, response);
		}
		
	}
	

}
