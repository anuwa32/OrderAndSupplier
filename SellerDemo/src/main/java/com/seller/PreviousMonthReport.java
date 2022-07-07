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


@WebServlet("/PreviousMonthReport")
public class PreviousMonthReport extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		PrintWriter out =response.getWriter(); 
		response.setContentType("text/html");
		
		//String date  = request.getParameter("rep");
		
		
		boolean isTrue;  
		isTrue =SellerDBUtil.orderpreviousmonthreport();  
		
		if(isTrue== true)
		{
			
			List<Order> repmDetails = SellerDBUtil.getpreviousmonthreportdetails(); 
			request.setAttribute("repmDetails", repmDetails);
			
               try {
			RequestDispatcher rs = request.getRequestDispatcher("previousmonthprof.jsp");
			rs.forward(request, response);
               }catch(Exception e) {
            	   e.printStackTrace();
            	   System.out.println("fsgdgfffffff");
               }
	}else
		{
			out.println("<script type= 'text/javascript'>");   
			out.println("alert('Nothing related to these details has been ordered');");
			out.println("location ='previousmonthreport.jsp'");
			out.println("</script>");
		}
		
	}

}
