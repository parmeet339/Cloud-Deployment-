package com;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegControl
 */
@WebServlet("/RegControl")
public class RegControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
		int f=0;
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		if(f==1)
		{
			RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
			request.setAttribute("msg", "Registration Completed...");
			rd.forward(request, response);
		}
		else
		{
			RequestDispatcher rs = request.getRequestDispatcher("/login.jsp");
			request.setAttribute("msg", "Registration Failed...");
			rs.forward(request, response);
		}
		
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id=request.getParameter("id");
		String name=request.getParameter("name");
		String add=request.getParameter("add");
		String mob=request.getParameter("mob");
		String pass=request.getParameter("pass");
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://us-cdbr-iron-east-03.cleardb.net:3306/ad_a6daf7caf521183","bf43069a87ffd4","f85817a2");
			System.out.println("Database Connected");
			
			
			String q = "insert into user values('"+id+"','"+name+"','"+add+"','"+mob+"','"+pass+"')";
			PreparedStatement ps = con.prepareStatement(q);
			ps.executeUpdate();
			f=1;
			con.close();
			System.out.println("Connection Closed...");
			
			doGet(request, response);
			
			
			
		}
		catch(Exception e){
			e.printStackTrace();
			f=2;
			doGet(request, response);
		}
		
	
	}

}
