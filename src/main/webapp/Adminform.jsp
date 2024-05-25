<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="css/style.css">
</head>
<body>
     <div class="main">

		<!-- Sing in  Form -->
		<section class="sign-in">
			<div class="container">
				<div class="signin-content">
					<div class="signin-image">
						<figure>
							<img src="images/3d-casual-life-pie-chart.gif" alt="sing up image">
						</figure>
						
					</div>

					<div class="signin-form">
						<h2 class="form-title">ADMIN</h2>
						<form method="get" action="#" class="register-form"
							id="login-form">
							<div class="form-group">
								<label for="username"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="username" id="username"
									placeholder="Your Name" />
							</div>
							<div class="form-group">
								<label for="password"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" name="password" id="password"
									placeholder="Password" />
							</div>
							<div class="form-group">
								<input type="checkbox" name="remember-me" id="remember-me"
									class="agree-term" /> <label for="remember-me"
									class="label-agree-term"><span><span></span></span>Remember
									me</label>
							</div>
							<div class="form-group form-button">
								<input type="submit" name="signin" id="signin"
									class="form-submit" value="Log in" />
							</div>
						</form>
						
					</div>
				</div>
			</div>
		</section>

	</div>
	
	
	<%

	/* String User=request.getParameter("username");
	String Pass=request.getParameter("password");
	
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	
	
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/signup","root","root");
	
	Statement stat = con.createStatement();
	
	ResultSet rs = stat.executeQuery("select * from adminlogin");
	
	String user1=null;
	String pass1=null;
	
	while (rs.next()){
		user1 = rs.getString(1);
		pass1 = rs.getString(2);
	}
	
	if(User.equals(user1) && Pass.equals(pass1))
	{
		response.sendRedirect("NEWADMIN.jsp");
	}
	else{
		out.println("Invalid username or password");
	}
 */	
 
 String User = request.getParameter("username");
 String Pass = request.getParameter("password");
 response.setContentType("text/html");
 
 Class.forName("com.mysql.cj.jdbc.Driver");
 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/signup","root","root");
 PreparedStatement ps = con.prepareStatement("select * from adminlogin where username=? and password=?");
 ps.setString(1, User);
 ps.setString(2, Pass);
 ResultSet rs = ps.executeQuery();

 if(rs.next()){
	    out.print("Kam hogyaa");
	    RequestDispatcher rd = request.getRequestDispatcher("/NEWADMIN.jsp");
	    rd.forward(request, response);
	    
 }else{
	   out.print("Kam nahi hua");
 }
	%>



   
	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
  
</body>
</html>