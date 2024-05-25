<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import="java.sql.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <link rel="stylesheet" href="css/payment.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
</head>
<body>
    <div class="row">
       <div class="col-lg-6">
            <div>
              <p>${s_name}</p>
<             <p>${s_email}</p>
<             <p>${s_pass}</p>
<             <p>${s_mobile}</p>
            </div>
        </div>
        
        <form action="#" method="get" class="payment" >

     
            <div class="panel panel-default credit-card-box">
                <div class="panel-heading display-table">
                    <div class="row display-tr">
                        <h3 class="panel-title display-td">Payment Details</h3>
                        <img class="img-responsive pull-right" src="http://i76.imgup.net/accepted_c22e0.png">
                    </div>
                </div>
            </div>
            <br>
            <label for="cardNumber">CARD NUMBER</label>
            <input type="text" size="10" class="form-control" name="cardNumber" placeholder="Valid Card Number" autocomplete="cc-number" required autofocus />
            <span class="input-group-addon"><i class="fa fa-credit-card"></i></span>
            <label for="cardExpir">EXPIRATION DATE</label>
            <input type="text" size="5" class="form-control" name="cardExpiry" placeholder="MM / YY" autocomplete="cc-exp" required />
            <label for="cardCVC">CV CODE</label>
            <input type="text" size="3" class="form-control" name="cardCVC" placeholder="CVC" autocomplete="cc-csc" required />
            <label for="couponCode">DISCOUNT CODE</label>
            <input type="text" class="form-control" name="couponCode" />
            <br>
            <button class="blueButton" style="float:right;" type="submit">Confirm Payment</button>
            <br><br>
    </form>
    <!-- If you're using Stripe for payments -->
    <script type="text/javascript" src="https://js.stripe.com/v2/"></script>




 <%
                            response.setContentType("text/html");
                            String One = request.getParameter("cardNumber");
                    		String Two = request.getParameter("cardExpiry");
                    		String Three = request.getParameter("cardCVC");
                    		String Four = request.getParameter("couponCode");
                    	
                    		
                    		Class.forName("com.mysql.cj.jdbc.Driver");
                		  	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/signup","root","root");
                    		/* PreparedStatement ps = con.prepareStatement(); */
                    		/* ps.executeUpdate(); */
                    		Statement st = con.createStatement();
                    		st.executeUpdate("insert into newpayment(cardno,expiredate,cvcode,discount) values ('"+One+"','"+Two+"','"+Three+"','"+Four+"')");
                            
   %>
    
     
    
   
</div>
</body>
</html>