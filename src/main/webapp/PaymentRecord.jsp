<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
  <table  class="table table-bordered border-dark">
      <tr>
         <th>Card Number</th>
         <th>Expireddate</th>
         <th>CV Code</th>
         <th>Discount</th>
         <th >Confirm</th>
         <th>Delete</th>
      </tr>
      
      
      <%
     
      
       Class.forName("com.mysql.cj.jdbc.Driver");
       Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/signup","root","root");
       PreparedStatement ps = con.prepareStatement("select * from pay ");
       ResultSet rs = ps.executeQuery();
       while(rs.next()){
    	   
    	   String id = rs.getString("id");
      
      %>
      <tr>
        <td><%=rs.getString("cardnum") %></td>
        <td><%=rs.getString("expire_date") %></td>
        <td><%=rs.getString("cvc_code") %></td>
        <td><%=rs.getString("discount_code") %></td>
        <td><a class="btn-btn-info">Confirm</a></td>
        <td><a href="?id=<%=id %>">Delete</a></td>
      </tr>
      
      
      <%
       }
      %>
  </table>
</body>
</html>