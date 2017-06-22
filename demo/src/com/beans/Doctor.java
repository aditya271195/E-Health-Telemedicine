package com.beans;

public class Doctor {
	private String nam;
	 private String degree;
	 private String email;
	 private String password;
	 private String repassword;
	 private String contact;
	 private String category;
	
	 
	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String msg1="";
	 public String msg2="";
	 public String msg3="";
	 public String msg4="";
	 public String msg5="";
	 public String msg6="";
	 public String msg8="";
	
	 
	 
	
	

	public String getDegree() {
		return degree;
	}

	public void setDegree(String degree) {
		this.degree = degree;
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

	
	public String getNam() {
		return nam;
	}

	public void setNam(String nam) {
		this.nam = nam;
	}

	public boolean validate() {
		if(this.nam.equals("")){
			msg1="Enter the name";
	
		}
		if(this.degree.equals("")){
			msg5="Enter the Degree";
		
			
		}
		if(this.contact.equals("")){
			msg6="Enter the contact";	
		}
		
		if(this.email.equals("")){
			msg2="Enter the email";
	
		}
		if(this.category.equals("select speciality")){
			msg8="Select Speciality";
		}
		if(this.password.equals("")){
			msg3="Enter the password";

		}
		if(this.repassword.equals("")){
			msg4="Enter the repassword";
		}else if(!this.password.equals(this.repassword)){
		msg4="Password do not match";
		}
		
		if(msg1.equals("") && msg2.equals("")  && msg3.equals("") && msg4.equals("")&& msg5.equals("")&& msg6.equals("")&& msg8.equals("")){
			
	return true;
	}
		return false;
		}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
}
