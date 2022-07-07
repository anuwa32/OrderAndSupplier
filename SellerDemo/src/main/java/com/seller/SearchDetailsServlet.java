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


@WebServlet("/SearchDetailsServlet")
public class SearchDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		PrintWriter out =response.getWriter(); 
		response.setContentType("text/html");
		
		String brand = request.getParameter("search");
		
		boolean isTrue;  
		isTrue =SellerDBUtil.searchdetails(brand);  
		
		if(isTrue== true)
		{
			
			List<Seller1d> sehDetails = SellerDBUtil.getsearchdetails(brand); 
			request.setAttribute("sehDetails", sehDetails);
			
               try {
			RequestDispatcher rs = request.getRequestDispatcher("searchprofile.jsp");
			rs.forward(request, response);
               }catch(Exception e) {
            	   e.printStackTrace();
            	   System.out.println("fsgdgfffffff");
               }
		}else
		{
			out.println("<script type= 'text/javascript'>");   
			out.println("alert('No relevent information was found on the search result');");
			out.println("location ='order.jsp'");
			out.println("</script>");
		}
	}

}
