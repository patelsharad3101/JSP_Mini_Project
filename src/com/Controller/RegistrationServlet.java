package com.Controller;
import java.io.IOException;
import java.util.LinkedList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import com.dao.DBApplication;
import com.Model.Register;
import com.dao.DBApplication;

/**
 * Servlet implementation class RegistrationServlet
 */
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistrationServlet() {
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
		System.out.println("saveserv1");
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String address=request.getParameter("address");
		String cityname=request.getParameter("cityname");
		String statename=request.getParameter("statename");
		String country=request.getParameter("country");		
		String ph=request.getParameter("phone");
		long phone=Long.parseLong(ph);
		String email=request.getParameter("email");
		
		Register r=new Register();
		System.out.println("saveserv3");
		r.setUsername(username);
		r.setPassword(password);
		r.setAddress(address);
		r.setCityname(cityname);
		r.setStatename(statename);
		r.setCountry(country);
		r.setPhone(phone);
		r.setEmail(email);
		System.out.println("saveserv4");
		
		try {
			DBApplication db=new DBApplication();
			List<Register> lst=new LinkedList<Register>();
			lst.add(r);
			System.out.println("test1");
			int i=db.saveData(lst);
			System.out.println("test2 iw value"+i);
			if(i>0)
			{
				System.out.println("test3");
				response.sendRedirect("Index.jsp");
			}
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		    request.getRequestDispatcher("Error.jsp").include(request, response);  

		}
	}

}
