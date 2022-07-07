package com.seller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Registerinsert")
public class Registerinsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//create the values for catching values
		
		String firstname=request.getParameter("name");
		String lastname = request.getParameter("lname");
		String nic = request.getParameter("nic");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		String dob = request.getParameter("dob");
		String gender = request.getParameter("gender");
		String username = request.getParameter("uid");
		String password = request.getParameter("psw");
		
		boolean isTrue;
		
		 isTrue=SellerDBUtil.insertseller(firstname, lastname, nic, phone, address, dob, gender, username, password);
		 
		 if(isTrue==true)
		 {
			 RequestDispatcher di = request.getRequestDispatcher("login.jsp");
			 di.forward(request, response);
			 
		 }else
		 {
			 RequestDispatcher di2 = request.getRequestDispatcher("error.jsp");
			 di2.forward(request, response);
			 
		 }
		
		
		
	}

}
