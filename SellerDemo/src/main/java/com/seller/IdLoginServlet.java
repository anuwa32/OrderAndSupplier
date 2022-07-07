package com.seller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/IdLoginServlet")
public class IdLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out =response.getWriter(); 
		response.setContentType("text/html");
		
		
		String sid =  request.getParameter("sellid");
		
		boolean isTrue;  
		isTrue =SellerDBUtil.validatelogid(sid);  // call validate method
		
		if(isTrue== true)
		{
			List<Seller1d> sd1Details = SellerDBUtil.getsellerlogid(sid); //navigate userRegister form
			request.setAttribute("sd1Details", sd1Details);
			

			RequestDispatcher rs = request.getRequestDispatcher("sellerDetailsprof.jsp");
			rs.forward(request, response);
		}else
		{
			out.println("<script type= 'text/javascript'>");   
			out.println("alert('you are not added your sell details, first add the details');");
			out.println("location ='selldetails.jsp'");
			out.println("</script>");
		}
		
		
		
	}

}
