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


@WebServlet("/OrderIdServlet")
public class OrderIdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		PrintWriter out =response.getWriter(); 
		response.setContentType("text/html");
		
		
		String oid =  request.getParameter("oid");
		
		boolean isTrue;  
		isTrue =SellerDBUtil.validateorderid(oid);  
		
		if(isTrue== true)
		{
			List<Order> orderDetail = SellerDBUtil.getorderid(oid); 
			request.setAttribute("orderDetail", orderDetail);
			

			RequestDispatcher rs = request.getRequestDispatcher("orderprofile.jsp");
			rs.forward(request, response);
		}else
		{
			
			out.println("<script type= 'text/javascript'>");   
		   out.println("alert('you are not order anything');");
			out.println("location ='oderid.jsp'");
			out.println("</script>");
		}
		
	
	}

}
