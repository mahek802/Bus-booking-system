<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/message.css">

    <script
      src="https://kit.fontawesome.com/64d58efce2.js"
      crossorigin="anonymous"></script>
</head>
<body>
     <div class="container">
      <span class="big-circle"></span>
      <img src="" class="square" alt="" />
      <div class="form">
        <div class="contact-info">
         <img src="images/abstract-message-sent.gif" alt="">
        </div>

        <div class="contact-form">
          <span class="circle one"></span>
          <span class="circle two"></span>

          <form action="#" method="get" autocomplete="off">
            <h3 class="title">Message</h3>
          
          
            <div class="input-container textarea">
              <textarea name="message" class="input"></textarea>
              <label for="">Message</label>
              <span>Message</span>
            </div>
            <input type="submit" value="Send" class="btn" />
            <a href="http://localhost:8040/SignUp/messagepro.jsp">Show User Profile</a>
            
          </form>
          
        </div>
        
      </div>
     
    </div>
    
    
   
   
   
    <%
                            response.setContentType("text/html");
                            String One = request.getParameter("message");
                    																																																					
                    	
                    		
                    		Class.forName("com.mysql.cj.jdbc.Driver");
                		  	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/signup","root","root");
                    		/* PreparedStatement ps = con.prepareStatement(); */
                    		/* ps.executeUpdate(); */
                    		Statement st = con.createStatement();
                    		st.executeUpdate("insert into message (messagee) values ('"+One+"')");
                            
   %>
   
   <%
    Class.forName("com.mysql.cj.jdbc.Driver");
 	Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/signup","root","root");
 	PreparedStatement ps = con1.prepareStatement("select * from message");
 	ResultSet rs = ps.executeQuery();
 	while(rs.next()){
 		
 		HttpSession ses = request.getSession();
 		ses.setAttribute("s_message", rs.getString("messagee"));
 		
 		/* RequestDispatcher rd = request.getRequestDispatcher("messagepro.jsp");
 		rd.forward(request, response); */
 	
 	}
   %>
  

    <script src="js/app.js"></script>
</body>
</html>