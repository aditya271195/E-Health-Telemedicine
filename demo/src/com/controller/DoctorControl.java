package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.beans.Answer;
import com.beans.User;
import com.model.Account;

public class DoctorControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
  

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action=request.getParameter("action");
		if(action==null){
			request.getRequestDispatcher("jsps/doctor/index.jsp").forward(request, response);
		}else{
			doPost(request, response);
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action=request.getParameter("action");
		if(action.equals("viewque")){                                                               //doctor/index.jsp
			request.getRequestDispatcher("jsps/doctor/viewque.jsp").forward(request, response);
		}
		if(action.equals("logout")){                                                                 //doctor/index.jsp
			request.getRequestDispatcher("jsps/main/index.jsp").forward(request, response);
		}
		if(action.equals("profilepic")){                                                             //doctor/index.jsp
			request.getRequestDispatcher("jsps/docregistration/upload.jsp").forward(request, response);
		}
		if(action.equals("postans")){        
			//doctor/viewque.jsp
			String qid=request.getParameter("qid");
			request.setAttribute("id", qid);
			request.getRequestDispatcher("jsps/doctor/postanswer.jsp").forward(request, response);
		}
		if(action.equals("post_ans")){                                                                //doctor/postanswer.jsp
			String ans=request.getParameter("ans");
			String qid=request.getParameter("qid");
			
			Answer an=new Answer();
			an.setAns(ans);
			an.setQid(qid);
			Account a=new Account();
			try {
				a.insertans(ans,qid);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			request.setAttribute("id", qid);
			request.getRequestDispatcher("jsps/doctor/viewque.jsp").forward(request, response);
			
		}
		if(action.equals("schedule")){
			   User p = new User();
               Date d1=p.fetchDate(1);
               DateFormat df = DateFormat.getDateInstance();
               String a=df.format(new Date());
               
               String b=df.format(d1); 
               request.setAttribute("a",a);
               request.setAttribute("b",b);
			request.getRequestDispatcher("jsps/doctor/schedule.jsp").forward(request, response);
		}
	
	}

}
