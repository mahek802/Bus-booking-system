<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment form</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" 
  integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <style>
     body {
	/**********************
  This contains the font, Internet Explorer fall back options and 
  the background color for all of the sites
  **********************/
	background: #FFC700 no-repeat center center fixed;
	margin: 0 auto;
	font-family: "Lucida Sans Unicode", "Lucida Grande", "sans-serif";
	/* IE Fallback */

	width: 100%;
	height: 100%;
	background-image:url(../images/payment\ kro.avif);
}
/**********************
Below is the code for the red and blue button class which will be 
for all of the buttons in the program including the submit, next,
cancel, etc. 
**********************/

.blueButton {
	-moz-box-shadow: inset 0px -3px 7px 0px #FFC700;
	-webkit-box-shadow: inset 0px -3px 7px 0px #FFC700;
	box-shadow: inset 0px -3px 7px 0px #FFC700;
	background-color: #FFC700;
	-moz-border-radius: 3px;
	-webkit-border-radius: 3px;
	border-radius: 3px;
	border: 1px solid #FFC700;
	display: inline-block;
	cursor: pointer;
	color: #fff;
	font-family: Arial;
	font-size: 15px;
	padding: 9px 23px;
	text-decoration: none;
	text-shadow: 0px 1px 0px #FFC700
}

.blueButton:hover {
	background-color: #FFC700;
}

.blueButton:active {
	position: relative;
	top: 1px;
}

/**********************
Below is the code for the confirm order page, it displays the material ID and cost of the order
**********************/

.payment input[type=text] {
	width: 95%;
	padding: 12px 20px;
	margin: 8px 0;
	display: block;
	border: 1px solid #FFC700;
	border-radius: 4px;
	box-sizing: border-box;
	resize: none;
	text-align: left;
}

.payment input[type=text]:focus {
	border: 1px solid #fff;
}

.payment input[type=submit],
.payment input[type=button] {
	float: right;
	margin: -20px 20px 10px 0px;
}

.payment {
	border-radius: 5px;
	background-color: #fff;
	padding: 40px;
	width: 40%;
	margin: 0 auto;
	margin-top: 20px;
	box-shadow: 1px 1px 5px #fff;
}


/**********************
Below is the form for the confirm order table 
**********************/

/* CSS for Credit Card Payment form */
.credit-card-box .panel-title {
    display: inline;
    font-weight: bold;
}
.credit-card-box .form-control.error {
    border-color: red;
    outline: 0;
    box-shadow: #FFC700;
}
.credit-card-box label.error {
  font-weight: bold;
  color: red;
  padding: 2px 8px;
  margin-top: 2px;
}
.credit-card-box .payment-errors {
  font-weight: bold;
  color: red;
  padding: 2px 8px;
  margin-top: 2px;
}
.credit-card-box label {
    display: block;
}
/* The old "center div vertically" hack */
.credit-card-box .display-table {
    display: table;
}
.credit-card-box .display-tr {
    display: table-row;
}
.credit-card-box .display-td {
    display: table-cell;
    vertical-align: middle;
    width: 50%;
}
.credit-card-box .panel-heading img {
    min-width: 180px;
}
  </style>
</head>
<body>

    <form action="#" method="get" class="payment" >

            <div class="panel panel-default credit-card-box">
                <div class="panel-heading display-table">
                    <div class="row display-tr">
                        <h3 class="panel-title display-td">Payment Details</h3>
          
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
            <button class="blueButton" style="float:right;" onclick="mahek()" id="one" type="submit">Confirm Payment</button>
            <br><br>
    </form>
    
    <center>
       <a href="index.jsp" class="btn btn-light p-2">Back To home page</a>
    </center>
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
                    		st.executeUpdate("insert into pay (cardnum,expire_date,cvc_code,discount_code) values ('"+One+"','"+Two+"','"+Three+"','"+Four+"')");
                            
   %>
   
   
   
   <script>

   function mahek(){
		/* alert("Task Assigned Successfully!!");
		 */
		const Name1=document.getElementById('one').value;
		 
		 if(Name1 != ' '){
			 alert("Payment done Successfully!!"); 
		 }
		 else{
			 alert("Payment Failed!!");
		 }
	}

</script>

</body>
</html>