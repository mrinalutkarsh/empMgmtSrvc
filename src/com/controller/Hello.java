package com.controller;

import java.io.IOException;
import com.util.DBUtil;
import java.io.PrintWriter;
import java.sql.Connection;
//import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


//import javax.naming.Context;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
//import javax.servlet.SessionCookieConfig;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


//@WebServlet(name="Validate", urlPatterns={"/Hello"})
public class Hello extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public Hello() {
	}
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
	}
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		System.out.println("inside hello Servlet!");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		String inputEID = request.getParameter("EID");
		String inputPWD = request.getParameter("PWD");
		String pwd = null;
		String firstName=null;
		System.out.println(inputEID);
		// System.out.println(PWD);
		
		/*
		 * Database Access 
		 */
		try{
			Connection con=DBUtil.getConnection();
			PreparedStatement pstmt = con
					.prepareStatement("select  Emp_password,Emp_fname from Employee where Emp_id=?");
			pstmt.setString(1, inputEID);
			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				pwd = rs.getString(1);
				firstName=rs.getString(2);
				System.out.println(pwd);
				
				System.out.println(firstName);
				//pageContext.setAttribute("fname",fname,pageContext.APPLICATION_SCOPE);
				//request.setAttribute("fname", firstName);
				
				
			//PreparedStatement pstmt2=con.prepareStatement("select Emp_id from Employee where )
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		System.out.println("pwd:- " + pwd);
		System.out.println("inputPWD:- " + inputPWD);
		RequestDispatcher rd = null;
		if (inputPWD.equals(pwd) ) {
			
			HttpSession s=request.getSession();
			System.out.println(s.isNew());
			if(s.isNew()==true){
				s.setAttribute("fname", firstName);
			}/*else{
				rd = request.getRequestDispatcher("index.jsp");
				rd.forward(request, response);
			}*/
			//System.out.println("inside if part!");

			rd = request.getRequestDispatcher("mainmenu.jsp");
			rd.forward(request, response);

			//System.out.println("after forwarding!");

		} else {
			out.print("<p style=\"color:red\">Sorry EmployeeID or Password entered is incorrect! Please enter correct ID and password.</p>");
			rd = request.getRequestDispatcher("index.jsp");
			//System.out.println("after request dispatcher");
			rd.include(request, response);
			//System.out.println("after the page is included");
		}

		/*
		 * out.print("<html><body>"); out.print("<h3>Hello Servlet</h3>");
		 * out.print("</body></html>");
		 */
	}

}
