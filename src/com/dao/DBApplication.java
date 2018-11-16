package com.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

import com.Model.Order;
import com.Model.Register;

import oracle.jdbc.util.Login;
public class DBApplication {
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	
	// T oset connection with database
	public Connection myConnection()
	{
		try
		{
			Class.forName("oracle.jdbc.OracleDriver");
			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","newuser123");
		System.out.println("CONNECTION DONE");
		}
		catch(Exception e)
		{
			System.out.println(e);
			System.out.println("CONNECTION NOT DONE");
		}
		return con;
	}
	//To save or insert data inside database
	public int saveData(List<Register> lst)
	{
		System.out.println("dbsave1");
		int i=0;
		//Account a=lst.get(0);
		Register a=null;
		con=myConnection();
		try
		{
			Iterator<Register> itr=lst.iterator();
			System.out.println("dbsave2");
			while(itr.hasNext())
			{
				System.out.println("dbsave3");
				a=itr.next();
				ps=con.prepareStatement("insert into CUSTOMER values(?,?,?,?,?,?,?,?)");
				ps.setString(1,a.getUsername());
				ps.setString(2,a.getPassword());
				ps.setString(3,a.getAddress());
				ps.setString(4,a.getCityname());
				ps.setString(5,a.getStatename());
				ps.setString(6,a.getCountry());
				ps.setLong(7,a.getPhone());
				ps.setString(8,a.getEmail());	
				i = ps.executeUpdate();
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
System.out.println("NO ENTRY");
		}
		finally
		{
			try
			{
				con.close();
			} 
			catch (SQLException e) 
			{
				e.printStackTrace();
			}
		}
		return i;
	}
	//To save the order data
	
	public int saveOrderData(List<Order> lst)
	{
		System.out.println("dbsave1");
		int i=0;
		//Account a=lst.get(0);
		Order a=null;
		con=myConnection();
		try
		{
			Iterator<Order> itr=lst.iterator();
			System.out.println("dbsave2");
			while(itr.hasNext())
			{
				System.out.println("dbsave3");
				a=itr.next();
				ps=con.prepareStatement("insert into CUSTOMER_ORDER values(?,?,?,?,?)");
				ps.setString(1,a.getUsername());
				ps.setString(2,a.getProdcode());
				ps.setString(3,a.getProdname());
				ps.setDouble(4,a.getQuantity());
				ps.setString(5,a.getPaymode());
				i = ps.executeUpdate();
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
System.out.println("NO ENTRY");
		}
		finally
		{
			try
			{
				con.close();
			} 
			catch (SQLException e) 
			{
				e.printStackTrace();
			}
		}
		return i;
	}
	//To fetch all the user data
	
	public List<Register> getAllData()
	{
		List<Register> lst=new LinkedList<Register>();
		con=myConnection();
		System.out.println("cnt1");

		try
		{
		Statement s=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
			rs=s.executeQuery("select * from customer");
			System.out.println("cnt45");

			
			if (rs != null && rs.first()) {
			    do {
			    	Register a=new Register();
					a.setUsername(rs.getString(1));
					a.setPassword(rs.getString(2));
					a.setAddress(rs.getString(3));
					a.setCityname(rs.getString(4));
					a.setStatename(rs.getString(5));
					a.setCountry(rs.getString(6));
					a.setPhone(rs.getInt(7));
					a.setEmail(rs.getString(8));
					lst.add(a);
					System.out.println("cnt2");
			    } while (rs.next());
			}
			con.close();
			System.out.println("cnt3");

		}
		catch(Exception e)
		{
			e.printStackTrace();
			System.out.println("cnt4");	
		}
		return lst;
	}
	// To fetch all order data
	
	public List<Order> getAllOrderData()
	{
		List<Order> lst=new LinkedList<Order>();
		con=myConnection();
		try
		{
		Statement s=
					con.createStatement
					(ResultSet.TYPE_SCROLL_SENSITIVE,
							ResultSet.CONCUR_READ_ONLY);
			rs=s.executeQuery("select * from CUSTOMER_ORDER");
			
			if (rs != null && rs.first()) {
			    do {
			    	Order a=new Order();
					a.setUsername(rs.getString(1));
					a.setProdcode(rs.getString(2));
					a.setProdname(rs.getString(3));
					a.setQuantity(rs.getDouble(4));
					a.setPaymode(rs.getString(5));
					
					lst.add(a);
					System.out.println("cnt");
			    } while (rs.next());
			}
			con.close();

		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return lst;
	}
	
	// To check the authenticity of user login
	public boolean checkLogin(String username,String password){
		boolean status=false;
		System.out.println("dbsave1");
		int i=0;
		//Account a=lst.get(0);
		Register a=null;
		con=myConnection();
		try {
			PreparedStatement ps=con.prepareStatement("Select * from CUSTOMER where username = ? and password =?");
			ps.setString(1,username);
			ps.setString(2,password);
			
			ResultSet rs=ps.executeQuery();
			status=rs.next();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return status;
	}
	// To check authenticity of admin login
	
	public boolean checkAdminLogin(String username,String password){
		boolean status=false;
		System.out.println("dbsave1");
		int i=0;
		//Account a=lst.get(0);
		Register a=null;
		con=myConnection();
		System.out.println("ente check admin login");

		try {
			PreparedStatement ps=con.prepareStatement("Select * from ADMIN where username = ? and password =?");
			ps.setString(1,username);
			ps.setString(2,password);
			
			ResultSet rs=ps.executeQuery();
			status=rs.next();
			System.out.println("enter try check admin login");
			System.out.println(username);
			System.out.println(password);

			
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("enter catch check admin login");

		}
		return status;
	}
	
	
	/*
	public boolean validateUser(Login l)
	{
		myConnection();
		List<Register> lst=getAllData();
		boolean b=false;
		for(Register r:lst)
		{
			if(r.getRno()==l.getRno())
			{
				if(r.getPass().equals(l.getPass()))
				{
					b=true;
					break;
				}
			}
		}
		return b;
	}
	*/
}
