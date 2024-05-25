package com.org;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Registrationservlet")
public class Registrationservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	  resp.setContentType("text/html");
    	  String Name = req.getParameter("name");
    	  String Email = req.getParameter("email");
    	  String Pass = req.getParameter("pass");
    	  String Mobile = req.getParameter("contact");
    	  PrintWriter out = resp.getWriter();
    	  
    	  try {
    		  Class.forName("com.mysql.cj.jdbc.Driver");
    		  Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/signup","root","root");
    		  PreparedStatement ps = conn.prepareStatement("insert into login_reg (uname,uemail,upwd,umobile) values('"+Name+"','"+Email+"','"+Pass+"','"+Mobile+"')");
    		  ps.executeUpdate();
    		  
    		  RequestDispatcher rd = req.getRequestDispatcher("/Log.jsp");
    		  rd.include(req, resp);
    		 
    	  }catch(Exception e) {
    		  e.printStackTrace();
    		  RequestDispatcher rd = req.getRequestDispatcher("/index.jsp");
    		  rd.include(req, resp);
    		  
    	  }
    	  
    }
	
}
