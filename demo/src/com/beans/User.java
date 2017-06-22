package com.beans;

import java.util.Calendar;
import java.util.Date;

public class User {
	
		 private String name;
		 private String email;
		 private String password;
		 private String repassword;
		
		 public String msg1="";
		 public String msg2="";
		 public String msg3="";
		 public String msg4="";
		 
		 
		 public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		public String getRepassword() {
			return repassword;
		}
		public void setRepassword(String repassword) {
			this.repassword = repassword;
		}
		 
		public boolean validate(){
			if(this.name.equals("")){
				msg1="Enter the name";
			}
			if(this.email.equals("")){
				msg2="Enter the email";
			
			}
			if(this.password.equals("")){
				msg3="Enter the password";
		
			}
			if(this.repassword.equals("")){
				msg4="Enter the repassword";
		
			}else
			if(!this.password.equals(this.repassword)){
			msg4="Password do not match";
				}
			if(msg1.equals("") && msg2.equals("")  && msg3.equals("") && msg4.equals("")){
				return true;
						}
					else{
						return false;
					}
		}
		
		public Date fetchDate(int days){
			Date date = new Date(); //todays date
			Calendar cal = Calendar.getInstance();
			cal.setTime(date);
			cal.add(Calendar.DATE, days);
			return cal.getTime();
			
		}
		}
		
						



