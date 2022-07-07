package com.seller;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/SellerDetDelServlet")
public class SellerDetDelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String sid = request.getParameter("sellid");
		boolean isTrue;
		
		isTrue =  SellerDBUtil.deleteselldetails(sid);
		
		if(isTrue == true)
		{
			RequestDispatcher dis = request.getRequestDispatcher("sell.jsp");
			dis.forward(request, response);
		}
		else {
			
			
			RequestDispatcher dis = request.getRequestDispatcher("order.jsp");
			dis.forward(request, response);
		}
	}

}
