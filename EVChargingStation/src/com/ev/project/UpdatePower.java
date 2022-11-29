package com.ev.project;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdatePower
 */
public class UpdatePower extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdatePower() {
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
		// TODO Auto-generated method stub
		doGet(request, response);
		String mono = request.getParameter("mobile");
		String upass = request.getParameter("password");
		
		int npow = Integer.parseInt(request.getParameter("cspow"));
		
		System.out.println("hello");
		try
	    {
		    Connection conn = ConnectJDBC.connect();
		    PreparedStatement ps = conn.prepareStatement("select Power from charstation where Mobile=? and Password=?");
		    ps.setString(1,GetSet.getUsermo());
		    ps.setString(2,GetSet.getPass());
		
	        ResultSet rs  = ps.executeQuery();
	        int opow = 0;
	        while(rs.next())
	        {
	        	opow=rs.getInt(1);
	        	System.out.println("old power is "+opow);
	        }
	        System.out.println("new power"+npow);
	        System.out.println("old power"+opow);
	        npow = npow + opow;
//	        System.out.println("total power is ="+newpow);
	        PreparedStatement ps1 = conn.prepareStatement("update charstation set Power = ? where Mobile = ? and Password=?");
	        ps1.setInt(1, npow);
			ps1.setString(2, GetSet.getUsermo());
			ps1.setString(3, GetSet.getPass());
		 
		    int i = ps1.executeUpdate();
		    
		    if(i>0)
	        {
				 response.sendRedirect("CSAdd.html");
	        }
	        else
	        {
	            response.sendRedirect("404.html");
	        }
	    }
		catch(Exception e)
	    {
		    System.out.println(e);
		    e.printStackTrace();
	    }	
	}

}
