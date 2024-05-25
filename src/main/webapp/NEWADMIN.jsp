<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!--=============== REMIXICONS ===============-->
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/remixicon/4.2.0/remixicon.min.css">

     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

      <!--=============== CSS ===============-->
      <link rel="stylesheet" href="css/styles.css">
      
      
     
       
</head>
<body>
     <img src="assets/img/banner.png" alt="image" class="bg__image">
      <div class="bg__blur"></div>

      <!--==================== HEADER ====================-->
      <header class="header" id="header">
         <div class="header__content">
            <a href="#" class="header__logo"></a>
   
            <div class="header__actions">
               <i class="ri-notification-2-line"></i>
               <i class="ri-account-circle-line"></i>
   
               <div class="header__menu" id="header-menu">
                  <i class="ri-menu-line"></i>
               </div>
            </div>
         </div>

         <form action="" class="header__search">
            <i class="ri-search-line"></i>
            <input type="search" placeholder="Search Bus" class="header__input">
         </form> 
      </header>

      <!--==================== NAV ====================-->
      <div>
      <nav class="nav" id="nav">
         <div class="nav__menu">
            <a href="#" class="nav__logo">ADMIN</a>

            <ul class="nav__list">
               <li class="nav__item">
                  <a href="#" class="nav__link">
                     <i class="ri-home-5-line"><button type="submit" class="btn Passanger" onclick="mus()" href="">Passanger</button> </i>
                  </a>
               </li>

               <li class="nav__item">
                  <a href="#" class="nav__link">
                     <i class="ri-movie-line"></i><button type="submit" class="btn " onclick="mus1()" >TotalRecords</button> 
                  </a>
               </li>

         
            </ul>
    
           
         </div>
         

         <a href="index.jsp" class="nav__link">
            <i class="ri-logout-box-line"></i> <span>Log Out</span>
         </a>

         <div class="nav__close" id="nav-close">
            <i class="ri-close-line"></i>
         </div>
      </nav>
    
      
      

      <!--==================== DASHBOARD ====================-->
      <main class="main">
         <div class="col-lg-8">
                 <div  class="row" >
                              <div class="dash-content" style="display: none;" id="one" >
            <div class="overview">
               
                <div class="boxes">
                    <div class="box box1">
                        <i class="uil uil-thumbs-up"></i>
                        <span class="text">Total Buses</span>
                        <span class="number" id="passengerCount">15</span>
                    </div>
                    <div class="box box2">
                        <i class="uil uil-comments"></i>
                        <span class="text">Total Passenger</span>
                        <span class="number">30</span>
                    </div> 
                    <!-- <div class="box box3">
                        <i class="uil uil-share"></i>
                        <span class="text"></span>
                        <span class="number">20</span>
                    </div> -->
                </div>
            </div>
                 </div>
                 <div> 
                     <table class="table table-bordered table-hover table-warning" style="display: none;" id="two">
                         <tr>
                            <th>Bus Name</th>
                            <th>Bus No</th>
                            <th>Date</th>
                            <th>Bus Location</th>
                            <th>Delete</th>
                            <th>Confirm</th>
                            <th>Message</th>
                         </tr>
                         <%
                         String Id = request.getParameter("id");
                            Class.forName("com.mysql.cj.jdbc.Driver");
                            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/signup","root","root");
                            PreparedStatement ps = conn.prepareStatement("select * from busticket");
                            ResultSet rs = ps.executeQuery();
                            while(rs.next()){
                            	  String id = rs.getString("id");
                         %>
                           <tr>
                              <td><%=rs.getString("bus_name") %></td>
                              <td><%=rs.getString("bus_no") %></td>
                              <td><%=rs.getString("date_and_time") %></td>
                              <td><%=rs.getString("bus_location") %></td>
                              <td><a class="btn btn-danger" href="Delete.jsp?id=<%=id %>">Delete</a></td>
                              <td><a class="btn btn-success" href="PaymentConfirm.jsp">Confirm</a></td>
                              <td><a class="btn btn-secondary" href="http://localhost:8040/SignUp/Message.jsp">Message</a></td>
                           </tr>
                         <%
                            }
                         %>
                     </table>
                 </div>
          </div>
          </div>

  
      </main>


      
     

      <!--=============== MAIN JS ===============-->
      
      
       <script>
      function mus(){
        document.getElementById('one').style.display="block";
        document.getElementById('two').style.display="none";
       
      }
      function mus1(){
          document.getElementById('two').style.display="block";
          document.getElementById('one').style.display="none";
          
          
          
          
          
          
          
          
          let passengerCount = 0; 
          const passengerCountElement = document.getElementById('passengerCount');
          const targetPassengerCount = 15; 

          function updatePassengerCount() {
            if (passengerCount <= targetPassengerCount) {
              passengerCount++; 
              passengerCountElement.textContent = passengerCount;
            } else {
              clearInterval(intervalId); 
            }
          }
          const intervalId = setInterval(updatePassengerCount,40 );
         
        }
</script>
<script src="js/main.js"></script>
</body>
</html>