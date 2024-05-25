package com.org;

import java.io.IOException;
import java.io.PrintWriter;
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

@WebServlet("/Payment")
public class Payment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  @Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
     try {
    	 Class.forName("com.mysql.cj.jdbc.Driver");
         Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/signup","root","root");
         PreparedStatement ps = conn.prepareStatement("select * from booking ");
         ResultSet rs = ps.executeQuery();
         
       if(rs.next()){
      	   
      	   HttpSession session = req.getSession();
      	   session.setAttribute("session_name" , rs.getString("name"));
      	   RequestDispatcher rd = req.getRequestDispatcher("Payment.jsp");
      	   rd.include(req, resp);
         }
     }catch(Exception e) {
    	 e.printStackTrace();
     }
   
}

}
