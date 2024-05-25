package com;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Loginservlet")
public class Loginservlet extends HttpServlet {
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
			   out.print("hogya kam");
			   
			   
		   }else{
			   out.print("id and pass didnt match");
		   }
	  }catch(Exception e) {
		  e.printStackTrace();
	  }
}
	

}
