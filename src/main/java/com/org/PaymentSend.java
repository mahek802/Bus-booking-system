package com.org;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/PaymentSend")
public class PaymentSend extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   @Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	   resp.setContentType("text/html");
		  String Name = req.getParameter("fname");
		  String CardName = req.getParameter("cardname");
		  PrintWriter out = resp.getWriter();
			
		  String Email = req.getParameter("email");
		  String Address =req.getParameter("add"); 
		  String City = req.getParameter("city");
		  String DOB =req.getParameter("dob"); 
		  String Gender = req.getParameter("gender"); 
		  String Creditcard = req.getParameter("pay");
		  String Paypal =req.getParameter("pay");
		  String Cardnumber = req.getParameter("card-no");
		  String Cvc = req.getParameter("cvc");
		  String Expmonth =req.getParameter("month"); 
		  String Expyear = req.getParameter("year");
		  String Amount = req.getParameter("amount");
			 
		  
		  
		  
			 try {
				  Class.forName("com.mysql.cj.jdbc.Driver");
				  Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/signup","root","root");
					 Statement st = conn.createStatement(); 
//				   PreparedStatement ps = conn.prepareStatement();
					 st.executeUpdate("insert into payment (name,cardname,email,address,city,dateofbirth,gender,payment,cardnumber,cardcvc,expmonth,expyear,amount) values ('"+Name+"','"+CardName+"','"+Email+"','"+Address+"','"+City+"','"+DOB+"','"+Gender+"','"+Creditcard+"','"+Cvc+"','"+Expmonth+"','"+Expyear+"','"+Amount+"')"); 
				
			 }catch(Exception e) {
				 e.printStackTrace();
				 out.print("invalid code");
			 }
}
}
