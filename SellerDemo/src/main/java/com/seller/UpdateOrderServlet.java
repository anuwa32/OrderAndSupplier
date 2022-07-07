package com.seller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateOrderServlet")
public class UpdateOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		String oid = request.getParameter("odid");
		String date = request.getParameter("did");
		String bemail = request.getParameter("email");
		String vbrand = request.getParameter("brand");
		String category = request.getParameter("cate");
		String model = request.getParameter("model");
		String myear = request.getParameter("year");
		String scategory = request.getParameter("spart");
		String qty = request.getParameter("qtyt");
		String name = request.getParameter("fname");
		String item_no= request.getParameter("ino");
		String status = request.getParameter("status");
		
		boolean isTrue;
		
		isTrue = SellerDBUtil.updateorder(oid, date, bemail, vbrand, category, model, myear, scategory, qty, name, item_no,status);
		
		if(isTrue==true) {
			
			List<Order> orderDetail = SellerDBUtil.getupdateorderDetails(oid);
			request.setAttribute("orderDetail", orderDetail);
			
			RequestDispatcher dis = request.getRequestDispatcher("orderprofile.jsp");
			dis.forward(request, response);
		}else {
			
			RequestDispatcher dis = request.getRequestDispatcher("orderprofile.jsp");
			dis.forward(request, response);
		}
	}

}
