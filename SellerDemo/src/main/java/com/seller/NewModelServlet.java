package com.seller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/NewModelServlet")
public class NewModelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
        String mname = request.getParameter("model");
		
		
		boolean isCor;
		isCor =SellerDBUtil.insertmodel(mname);
		
		if(isCor==true)
		{
			RequestDispatcher dis = request.getRequestDispatcher("newmodel.jsp");
			dis.forward(request, response);
			
		}else
		{
			RequestDispatcher dis1 = request.getRequestDispatcher("error.jsp");
			dis1.forward(request, response);
			
		}
		
		
	}

}
