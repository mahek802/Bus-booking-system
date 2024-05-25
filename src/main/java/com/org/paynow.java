package com.org;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class paynow
 */
@WebServlet("/paynow")
public class paynow extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public paynow() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  response.setContentType("text/html");
		  String Name = request.getParameter("fullname");
		  PrintWriter out = response.getWriter();
			
		  String Email = request.getParameter("email");
		  String Address =request.getParameter("add"); 
		  String City = request.getParameter("city");
		  String DOB =request.getParameter("dob"); 
		  String Cardnumber = request.getParameter("cardno");
		  String Cvc = request.getParameter("cvccard");
		  String Expmonth =request.getParameter("expmonth"); 
		  String Expyear = request.getParameter("expyear");
		  String Amount = request.getParameter("amount");
		  
		  out.print("Done");
			 
		  
		  
		  
			 try {
				  Class.forName("com.mysql.cj.jdbc.Driver");
				  Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/signup","root","root");
					 Statement st = conn.createStatement(); 
//				   PreparedStatement ps = conn.prepareStatement();
					 st.executeUpdate("insert into paynow (fullname,email,address,city,dateofbirth,card_no,cvc_card,exp_month,exp_year,amount) values ('"+Name+"','"+Email+"','"+Address+"','"+City+"','"+DOB+"','"+Cvc+"','"+Expmonth+"','"+Expyear+"','"+Amount+"')"); 
				
			 }catch(Exception e) {
				 e.printStackTrace();
				 out.print("invalid code");
			 }
	}

}
