
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" 
 integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
 <link rel="stylesheet" href="css/About.css">
</head>
<div class="color ">
<body class="container bg-dark text-light">
   
<div class="row ">
   <div class="col-lg-5 mt-5 p-5 shadow p-4 bg-dark text-light">
   <h3>Your Profile </h3>
      <p class="mt-3"><b>Name</b>:- ${s_name}</p>
      <p class="mt-3"><b>Email</b>:- ${s_email}</p>
      <p class="mt-3"><b>Mobile</b>:- ${s_mobile}</p>
   </div>
   
   
   
   <div class="col-lg-7  mt-4 p-3 ">
    <center>
       <form action="#" method="get">
        <input class="border rounded-3 col-8 p-3" type="search" class="border border-info p-4" name="search" placeholder="Search your bus"/> 
     
        <button type="Submit" class="btn btn-warning text-centre p-2 mb-1 col-2">Search</button>
       </form>
    </center>
   <table class="table table-stripped table-primary table-hover table-bordered table-dark text-center mt-5 ">
      <tr>
         <th>Bus Name</th>
         <th>Bus No</th>
         <th>Date And Time</th>
         <th>Your Location</th>
         <th>Ticket Book</th>
      </tr>
      
      
     
<%
String Search = request.getParameter("search");
response.setContentType("text/html");

    Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/signup","root","root");
	PreparedStatement ps = con.prepareStatement("select * from busticket where bus_location=?");
	ps.setString(1, Search);
	ResultSet rs = ps.executeQuery();
	while(rs.next()){
		HttpSession ses = request.getSession();
		ses.setAttribute("p_name", rs.getString("bus_name"));
		ses.setAttribute("p_no", rs.getString("bus_no"));
		ses.setAttribute("p_date", rs.getString("date_and_time"));
		ses.setAttribute("p_city", rs.getString("bus_location"));
	
%>
   <tr>
      <td><%=rs.getString("bus_name") %></td>
      <td><%=rs.getString("bus_no") %></td>
      <td><%=rs.getString("date_and_time") %></td>
      <td><%=rs.getString("bus_location") %></td>
      <td><button type="button" class="btn btn-warning"><a href="booking.jsp">Book Now</a></button></td>
    <tr>


<%
	}
%>
</table></div>
</div>
<div class="mt-5 bg-dark text-light">
  <h1>About Your Bus</h1>
    <div class="row shadow p-3">
        <div class="col-lg-3">
          <p><b>Name:- </b>${p_name}</p>
          <p><b>Bus No:- </b>${p_no}</p>
          <p><b>Bus Date:- </b>${p_date}</p>
          <p><b>Your Location:- </b>${p_city}</p>
       </div>
       <div class="col-lg-3">
           <img src=" https://images.unsplash.com/photo-1598710877888-edaa20acfb92?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTh8fGJ1c3xlbnwwfHwwfHx8MA%3D%3D" class="img-fluid"/>
       </div>
       <div class="col-lg-6">
          <p>Buses come in various types, including city buses, intercity buses, coach buses, school buses, and shuttle buses. Each type is designed for specific purposes and passenger capacities. Bus services operate along specific routes and adhere to schedules. They may have designated stops where passengers can board and alight.
          </p>
         
       </div>
    </div>
</div>

</body>
</div>
</html>