package com.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Model.Order;
import com.Model.Register;
import com.dao.DBApplication;

/**
 * Servlet implementation class OrderServlet
 */
public class OrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 response.setContentType("text/html");  
	        PrintWriter out=response.getWriter();  
		String username=request.getParameter("username");
		String prodcode=request.getParameter("prodcode");
		String prodname=request.getParameter("prodname");
		String quant=request.getParameter("quantity");
		String paymode=request.getParameter("paymode");
		
		double quantity=Double.parseDouble(quant);
		
		
		Order o=new Order();
		System.out.println("saveserv3");
		o.setUsername(username);
		o.setProdcode(prodcode);
		o.setProdname(prodname);
		o.setQuantity(quantity);
		o.setPaymode(paymode);
		
		System.out.println("saveserv4");
		
		DBApplication db=new DBApplication();
		List<Order> lst=new LinkedList<Order>();
		lst.add(o);
        HttpSession session=request.getSession(false);  

		System.out.println("test1");
		int i=db.saveOrderData(lst);
		System.out.println("test2 iw value"+i);
		 if(session!=null){  
		        String name=(String)session.getAttribute("username");  
		          
		        
		        }  
		        else{  
		            out.print("Please login first");  
		            request.getRequestDispatcher("Login.jsp").include(request, response);  
		        }	
		  if(i>0)
			{
				System.out.println("test3");
	            request.getRequestDispatcher("Confirmation.jsp").include(request, response);  
			}
		  out.close();  
	}

	}

