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


@WebServlet("/ReportServlet")
public class ReportServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		PrintWriter out =response.getWriter(); 
		response.setContentType("text/html");
		
		String date  = request.getParameter("search");
		String vbrand = request.getParameter("search1");
		
		boolean isTrue;  
		isTrue =SellerDBUtil.orderreport(date,vbrand);  
		
		if(isTrue== true)
		{
			
			List<Order> repDetails = SellerDBUtil.getreportdetails(date,vbrand); 
			request.setAttribute("repDetails", repDetails);
			
               try {
			RequestDispatcher rs = request.getRequestDispatcher("report.jsp");
			rs.forward(request, response);
               }catch(Exception e) {
            	   e.printStackTrace();
            	   System.out.println("fsgdgfffffff");
               }
	}else
		{
			out.println("<script type= 'text/javascript'>");   
			out.println("alert('Nothing related to these details has been ordered');");
			out.println("location ='report.jsp'");
			out.println("</script>");
		}	
		
		
		
	}

	}
