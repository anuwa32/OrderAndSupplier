//package com.seller;
//
//import java.io.IOException;
////import java.util.List;
//import java.sql.Connection;
//
////import javax.servlet.RequestDispatcher;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import com.mysql.jdbc.PreparedStatement;
//
//
//@WebServlet("/Forgotpassword2Servlet")
//public class Forgotpassword2Servlet extends HttpServlet {
//	private static final long serialVersionUID = 1L;
//
//
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		
//	
//		try
//		{
//			Connection con = DBConnect.getConnection();
//			
//			String nic = request.getParameter("nic");
//			String pass = request.getParameter("pass");
//			
//			PreparedStatement ps =(PreparedStatement)con.prepareStatement("update seller set password=? where nic=?");
//			ps.setString(2, nic);
//			ps.setString(1, pass);
//			
//			
//			int i=ps.executeUpdate();
//			if(i>0)
//			{
//				response.sendRedirect("login.jsp");
//				
//			}else
//			{
//				response.sendRedirect("error.jsp ");
//			}
//			
//		}catch(Exception e)
//		{
//			e.printStackTrace();
//		}
//		
//	}
//
//}
