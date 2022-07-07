package com.seller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/NewSpareOrderServlet")
public class NewSpareOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		

        String spname = request.getParameter("spare");
		
		
		boolean isCor;
		isCor =SellerDBUtil.insertspareorder(spname);
		
		if(isCor==true)
		{
			RequestDispatcher dis = request.getRequestDispatcher("newspare.jsp");
			dis.forward(request, response);
			
		}else
		{
			RequestDispatcher dis1 = request.getRequestDispatcher("error.jsp");
			dis1.forward(request, response);
			
		}
		
		
		
		
	}

}
