package com.seller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteOrderServlet")
public class DeleteOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String oid = request.getParameter("odid");
		
		boolean isTrue;
		
		isTrue = SellerDBUtil.deleteorder(oid);
		
		if(isTrue==true) {
			 
			 RequestDispatcher dis = request.getRequestDispatcher("order.jsp");
			 dis.forward(request, response);
			 
		}else{
			
			 List<Order> orderDetail = SellerDBUtil.getupdateorderDetails(oid);
			 request.setAttribute("orderDetail", orderDetail);
			
			 RequestDispatcher dis1 = request.getRequestDispatcher("orderprofile.jsp");
			 dis1.forward(request, response);
			
		}
		
		
		
		
	}

}
