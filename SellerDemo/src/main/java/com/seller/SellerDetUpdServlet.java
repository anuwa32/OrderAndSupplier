package com.seller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/SellerDetUpdServlet")
public class SellerDetUpdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String sid = request.getParameter("sellid");
		String brand = request.getParameter("brand");
	    String category = request.getParameter("cate");
		String model = request.getParameter("model");
		String myear = request.getParameter("year");
		String infor = request.getParameter("spart");
		String bemail = request.getParameter("email");
		
		boolean isTrue;
		
		isTrue = SellerDBUtil.updateselldetails(sid, brand, category, model, myear, infor, bemail);
		
		if(isTrue == true) {
			
			List<Seller1d> sd1Details = SellerDBUtil.getSellerSellDetails(sid);
			request.setAttribute("sd1Details",sd1Details);
			
			RequestDispatcher dis = request.getRequestDispatcher("sellerDetailsprof.jsp");
			dis.forward(request, response);
		}
		else {
			
			List<Seller1d> sd1Details = SellerDBUtil.getSellerSellDetails(sid);
			request.setAttribute("sd1Details",sd1Details);
			
			
			RequestDispatcher dis1 = request.getRequestDispatcher("sellerDetailsprof.jsp");
			dis1.forward(request, response);
			
		}
		
		
	}

}
