<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete</title>
</head>
<body>
      <%
      String id =request.getParameter("id");
      Connection conn;
      PreparedStatement pst;
      ResultSet rs;
      
      
      Class.forName("com.mysql.cj.jdbc.Driver");
      conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/signup ","root","root");
      pst= conn.prepareStatement("delete from busticket where  id=?");
      pst.setString(1, id);
      pst.executeUpdate();
      RequestDispatcher rd = request.getRequestDispatcher("NEWADMIN.jsp");
      rd.include(request, response);
      
      %>
</body>
</html>