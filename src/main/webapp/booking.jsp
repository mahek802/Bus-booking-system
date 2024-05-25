<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<link rel="stylesheet" href="css/booking.css">
</head>
<body>
      <div class="background">
        <div class="booking-form">
            <h2>Travel Booking Form</h2>
            <form action="Bookservlet" method="get" >
                <label for="name">Name:</label>
                <input type="text" name="name" id="name" required>
 
                <label for="email">Email:</label>
                <input type="email" name="email" id="email" required>
               
           
                <label for="destination">Destination:</label>
                <input type="text" name="destination" id="destination" required>
           
                <label for="departure-date">Departure Date:</label>
                <input type="date" name="departure-date" id="departure-date" required>
               
                <label for="return-date">Return Date:</label>
                <input type="date" name="return-date" id="return-date" required>
                
                <button type="submit" class="btn btn-warning p-1" >Book Now</button>
                
            </form>
        </div>
    </div>

</body>
</html>