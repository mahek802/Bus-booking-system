package com.org;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Search
 */
@WebServlet("/Aboutservlet")
public class Aboutservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     @Override
    	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    		String Search = req.getParameter("search");
    		resp.setContentType("text/html");
    		
    		try{
    		  	Class.forName("com.mysql.cj.jdbc.Driver");
    		  	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/signup","root","root");
    		  	PreparedStatement ps = con.prepareStatement("select * from busticket where bus_location=?");
    		  	ps.setString(1, Search);
    		  	ResultSet rs = ps.executeQuery();
    		  	 while(rs.next()) {
    		  		 
    		  		HttpSession ses = req.getSession();
    	        	ses.setAttribute("ses_name", rs.getString("bus_name"));
    	        	ses.setAttribute("ses_number", rs.getString("bus_no"));

    	        	ses.setAttribute("ses_date", rs.getString("date_and_time"));
    	        	ses.setAttribute("ses_city", rs.getString("bus_location"));
    	        	
    	        	
    	        
    	        	RequestDispatcher rd = req.getRequestDispatcher("/About.jsp");
    	        	rd.include(req, resp);
    		  	 }
    		}catch(Exception e){
    			e.printStackTrace();
    		}
    		
    		
    	}

}
