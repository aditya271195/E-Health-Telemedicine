package com.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.Account;

public class Login1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action=request.getParameter("action");
		 if(action==null){
			 request.setAttribute("msg"," ");
			 request.getRequestDispatcher("jsps/login/login_user.jsp").forward(request, response);
	}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action=request.getParameter("action");
		if(action.equals("login_form")){

			String email=request.getParameter("email");
			String password=request.getParameter("password");
			HttpSession session=request.getSession();
			Account a=new Account();
			boolean status=false;
			
			try {
				status=a.checkUser(email,password);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
	if(status == true){
				session.setAttribute("email",email);
				request.getRequestDispatcher("jsps/user/index.jsp").forward(request, response);
			}
			else{
				request.setAttribute("msg", "Invalid username/password");
				request.getRequestDispatcher("jsps/login/login_user.jsp").forward(request, response);
			}

		}
	}

}
