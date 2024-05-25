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

@WebServlet("/Loginservlet1")
public class Loginservlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

   @Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	   resp.setContentType("text/html");
	  String Email = req.getParameter("username");
	  String Password = req.getParameter("password");
	  PrintWriter out = resp.getWriter();
	  try {
		  Class.forName("com.mysql.cj.jdbc.Driver");
		  Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/signup","root","root");
		  PreparedStatement ps = conn.prepareStatement("select * from login_reg where uemail=? and upwd=?");
		  ps.setString(1, Email);
		  ps.setString(2, Password);
		   ResultSet rs = ps.executeQuery();
		   
		   if(rs.next()) {
			  RequestDispatcher rd = req.getRequestDispatcher("/About.jsp");
			  rd.include(req, resp);
			  
			  HttpSession session = req.getSession();
			  session.setAttribute("s_name", rs.getString("uname"));
			  session.setAttribute("s_email", rs.getString("uemail"));
			  session.setAttribute("s_pass", rs.getString("upwd"));
			  session.setAttribute("s_mobile", rs.getString("umobile"));
			   
			   
		   }else{
			   out.print("id and pass didnt match");
			   RequestDispatcher rd = req.getRequestDispatcher("/About.jsp");
				  rd.include(req, resp);
		   }
	  }catch(Exception e) {
		  e.printStackTrace();
		  RequestDispatcher rd = req.getRequestDispatcher("/index.jsp");
		  rd.include(req, resp);
	  }
}
	

}
