package com.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.beans.UserQue;
import com.model.Account;

public class UserControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private final String dir="C:/Users/Aditya/Desktop/AdiJ2EE/ehealth/WebContent/uploads";
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action=request.getParameter("action");
		if(action==null){
			

			request.getRequestDispatcher("jsps/user/index.jsp").forward(request, response);
		}else{
			doPost(request, response);
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action=request.getParameter("action");
		if(action.equals("book_apt")){
			request.getRequestDispatcher("jsps/user/book_apt.jsp").forward(request, response);
			
			}
		
		if(action.equals("book_appointment")){
			String name=request.getParameter("name");
			String contact=request.getParameter("contact");
			String category=request.getParameter("category");
			String doctor=request.getParameter("doctor");
			String date=request.getParameter("date");
			String time=request.getParameter("time");
			String slot1=request.getParameter("slot1");
			String slot2=request.getParameter("slot2");
			
			
			Account a=new Account();
			try {
				a.bookappointment(name,contact,category,doctor,date,time);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			request.setAttribute("name", name);
			request.setAttribute("time", time);
			request.setAttribute("date", date);
			request.setAttribute("doctor",doctor);
			request.setAttribute("slot1",slot1);
			request.setAttribute("slot2",slot2);
			
			
			request.getRequestDispatcher("jsps/user/apt_confirmed.jsp").forward(request, response);
			}
		if(action.equals("postque")){
			String question=request.getParameter("question");
			request.getRequestDispatcher("jsps/user/postque.jsp").forward(request, response);
			
			}
		
		if(action.equals("post_question")){
			String email=request.getParameter("email");
			String question=request.getParameter("question");
			Account a=new Account();
			UserQue uq=new UserQue();
			uq.setQuestion(question);
			uq.setEmail(email);
			try {
				a.insertUserQue(email,question);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			request.getRequestDispatcher("jsps/user/notification.jsp").forward(request, response);
		}
		if(action.equals("viewprofile")){
			
	                        
	                        request.getRequestDispatcher("jsps/user/docprofile.jsp").forward(request, response);
	                    }
	                        
	         
		if(action.equals("logout")){
			
			request.getRequestDispatcher("jsps/main/index.jsp").forward(request, response);
		}
		if(action.equals("checkup")){
			request.getRequestDispatcher("jsps/user/checkup.jsp").forward(request, response);
			
			}
		if(action.equals("check_up")){
			String bt=request.getParameter("bt");
			String pr=request.getParameter("pr");		
			
	       request.setAttribute("bt",bt);
	       request.setAttribute("pr",pr);
	      
	   	
	       request.setAttribute("bt1","Range:[36.5 to 37.5 celsius (97.7 to 99.5 Fahrenheit )]");
	       request.setAttribute("pr1","60 to 80 BPM");
	       
	       request.setAttribute("bt2","Range:[>37.5 or 38.3 celsius (99.5 or 100.9 Fahrenheit)]");
	       request.setAttribute("pr2","below 60 BPM ");
	       

	       request.setAttribute("bt3","Range:[>40.0 or 41.0 celsius(104.0 or 105.8 Fahrenheit)]");
	       request.setAttribute("pr3","80 to 100 BPM");
	       
	       
	      
	   
			
			request.getRequestDispatcher("jsps/user/normal.jsp").forward(request, response);
			
		}
		if(action.equals("viewans")){
			String qid=request.getParameter("qid");
			request.setAttribute("qid", qid);
			request.getRequestDispatcher("jsps/user/a.jsp").forward(request, response);
		}
}}
