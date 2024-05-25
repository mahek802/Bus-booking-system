package com.org;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Bookservlet")
public class Bookservlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public Bookservlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        String Name = request.getParameter("name");
        String Email = request.getParameter("email");
        String Destination = request.getParameter("destination");
        String Date = request.getParameter("departure-date");
        String reDate = request.getParameter("return-date");
        PrintWriter out = response.getWriter();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/signup", "root", "root");
            PreparedStatement ps = conn.prepareStatement(
                    "insert into booking (bname, bemail, bdestination, bdate, redate) values (?, ?, ?, ?, ?)");
            ps.setString(1, Name);
            ps.setString(2, Email);
            ps.setString(3, Destination);
            ps.setString(4, Date);
            ps.setString(5, reDate);
            ps.executeUpdate();

            // Redirect to pay.jsp after successful booking
            RequestDispatcher rd = request.getRequestDispatcher("/pay.jsp");
            rd.forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            out.print("Invalid");
            // Redirect to pay.jsp in case of error
            response.sendRedirect("/pay.jsp");
        }
    }
}
