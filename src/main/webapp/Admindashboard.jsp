<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
                <div class="row">
          <div class=" col-lg-4">
                 <ul class="list-unstyled">
                    <li><button  type="submit" onclick="che()" class="text-decoration-none" href="">Dashboard</button></li>
                    <li><button class="text-decoration-none" onclick="che1()" href="">Total record</button></li>
                    <li><a class="text-decoration-none" href="">Dashboard</a></li>
                    <li><a class="text-decoration-none" href="">Dashboard</a></li>
                 </ul>
          </div>
          <div class="col-lg-8">
                 <div  style="display: none;" class="row" id="one">
                      <div class="d-flex">
                        <div class="col-lg-4 bg-warning">
                            <p class="fs-4 fw-bold">150</p>
                            <p class="fs-4 fw-bold">Passenger Count</p>
                        </div>
                        <div class="col-lg-4 bg-warning">
                          <p class="fs-4 fw-bold">150</p>
                          <p class="fs-4 fw-bold">Passenger Count</p>
                        </div>
                        <div class="col-lg-4 bg-warning">
                          <p class="fs-4 fw-bold">150</p>
                          <p class="fs-4 fw-bold">Passenger Count</p>
                        </div>
                      </div>
                 </div>
                 <div> 
                     <table class="table table-bordered table-hover" style="display: none;" id="two">
                         <tr>
                            <th>Bus No</th>
                            <th>Bus No</th>
                            <th>Bus No</th>
                            <th>Bus No</th>
                            <th>Delete</th>
                            <th>Confirm</th>
                         </tr>
                         <%
                            Class.forName("com.mysql.cj.jdbc.Driver");
                            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/signup","root","root");
                            PreparedStatement ps = conn.prepareStatement("select * from busticket");
                            ResultSet rs = ps.executeQuery();
                            while(rs.next()){
                            	  
                           
                         %>
                           <tr>
                              <td><%=rs.getString("bus_name") %></td>
                              <td><%=rs.getString("bus_no") %></td>
                              <td><%=rs.getString("date_and_time") %></td>
                              <td><%=rs.getString("bus_location") %></td>
                              <td><a class="btn btn-danger" href="">Delete</a></td>
                              <td><a class="btn btn-info " href="">Confirm</a></td>
                           </tr>
                         <%
                            }
                         %>
                     </table>
                 </div>
          </div>
      </div>
</body>
<script>
      function che(){
        document.getElementById('one').style.display="block";
        document.getElementById('two').style.display="none";
       
      }
      function che1(){
          document.getElementById('two').style.display="block";
          document.getElementById('one').style.display="none";
         
        }
</script>
</body>
</html>