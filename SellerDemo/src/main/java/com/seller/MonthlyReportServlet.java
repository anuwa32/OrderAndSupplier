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


@WebServlet("/MonthlyReportServlet")
public class MonthlyReportServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		

		PrintWriter out =response.getWriter(); 
		response.setContentType("text/html");
		
		String date  = request.getParameter("rep");
		
		
		boolean isTrue;  
		isTrue =SellerDBUtil.ordermonthreport(date);  
		
		if(isTrue== true)
		{
			
			List<Order> repoDetails = SellerDBUtil.getmonthreportdetails(date); 
			request.setAttribute("repoDetails", repoDetails);
			
               try {
			RequestDispatcher rs = request.getRequestDispatcher("monthreportprof.jsp");
			rs.forward(request, response);
               }catch(Exception e) {
            	   e.printStackTrace();
            	   System.out.println("fsgdgfffffff");
               }
	}else
		{
			out.println("<script type= 'text/javascript'>");   
			out.println("alert('Nothing related to these details has been ordered');");
			out.println("location ='monthreport.jsp'");
			out.println("</script>");
		}
		
	}

}
