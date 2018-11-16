package com.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.DBApplication;
import com.Model.Register;

/**
 * Servlet implementation class DisplayCustomerServlet
 */
public class DisplayCustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DisplayCustomerServlet() {
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
		System.out.println("displaycustomer1");
		try {
			DBApplication db=new DBApplication();
			List<Register> lst=db.getAllData();
			System.out.println("displaycustomer2");
			
			request.setAttribute("emplist", lst);
RequestDispatcher view = request.getRequestDispatcher("DisplayCustomer.jsp");
				view.forward(request, response);
		} catch (Exception e) {
		    request.getRequestDispatcher("Error.jsp").include(request, response);  

			// TODO Auto-generated catch block
			e.printStackTrace();
		}
/*PrintWriter pw = response.getWriter();
System.out.println("display error2");
pw.print("<body>");
pw.print("<table>");
System.out.println("display error3");

pw.print("<tr><td>UserName</td><td>Address</td><td>City</td><td>Mobile</td><td>Email</td></tr>");

System.out.println("display error1");
    for (Register r:lst) {
    	pw.print("<tr><td>"+r.getUsername()+"</td><td>"+r.getAddress()+"</td><td>"+r.getCityname()+"</td><td>"+r.getPhone()+"</td><td>"+r.getEmail()+"</tr>");
    }
pw.print("</table>");

pw.print("</body>");*/


	}

}
