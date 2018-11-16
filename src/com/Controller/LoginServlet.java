package com.Controller;
import java.io.PrintWriter;  

import java.io.IOException;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Model.Register;
import com.dao.DBApplication;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setHeader( "Pragma", "no-cache" );
		response.setHeader( "Cache-Control", "no-cache" );
		response.setDateHeader( "Expires", 0 );	
		if((request.getSession(false)==null)){
			response.sendRedirect("Index.jsp");
		}
		response.setContentType("text/html");  
        PrintWriter out=response.getWriter();  

		  String username=request.getParameter("username");
			String password=request.getParameter("password");
			System.out.println("saveserv3");
			System.out.println("try out");

			
			try {
				DBApplication db=new DBApplication();

				boolean status=db.checkLogin(username,password);
				System.out.println(status);
				System.out.println("enter try");

				if(status==true){
					
					out.print("Welcome, "+username);  
				    out.print(" Give Your Order...!!!");  

				    HttpSession session=request.getSession();  
				    session.setAttribute("username",username);  
					 
				    request.getRequestDispatcher("Order.jsp").include(request, response);  

				}
				else{
					out.print("Sorry, username or password error!"); 
					System.out.println("failed login");

				    request.getRequestDispatcher("Login.jsp").include(request, response);  
					}
				out.close();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			    request.getRequestDispatcher("Error.jsp").include(request, response);  
				
			}
				
	}
}
