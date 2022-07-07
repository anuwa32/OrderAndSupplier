package com.seller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/SellerDetailsServlet")
public class SellerDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String brand = request.getParameter("brandd");
		String category = request.getParameter("cate");
		String model = request.getParameter("model1");
		String myear = request.getParameter("year");
		String infor = request.getParameter("spart");
		String bemail = request.getParameter("email");
		
		boolean isTrue;
		
		isTrue = SellerDBUtil.insertsellerb1(brand, category, model, myear, infor, bemail);
		
		if(isTrue==true)
		{
			List<Seller1d> sd1Details = SellerDBUtil.getSellerb1Details(bemail);
			request.setAttribute("sd1Details",sd1Details);
			
			
			RequestDispatcher di = request.getRequestDispatcher("sellerDetailsprof.jsp");
			di.forward(request ,response);
			
		}else {
			
			
			RequestDispatcher di1 = request.getRequestDispatcher("error.jsp");
			di1.forward(request ,response);
		}
	}

}
