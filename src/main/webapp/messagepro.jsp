<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" 
 integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
 <style >
    body{
    background-color :#76885B;
    }
    btn{
    border-radius:30%;
    }
 </style>

</head>
<body class=" text-light">
   <div class="row container">
   <h1 class="text-center mt-5 fw-bolder">Details</h1>
         <div class="ps-5 pt-5 col-md-6 mt-5">
           <p><b>Name</b>:-${s_name }</p>
           <p><b>Email</b>:-${s_email }</p>
           <p><b>Password</b>:-${s_pass}</p>
           <p><b>Mobile</b>:-${s_mobile}</p>
           <p><b>Message</b>:-${s_message}</p>
         </div>
         <div class="col-md-6 mt-5">
             <img src="images/passanger.avif" class="img-fluid"/>
         </div>
   </div>
   <button type="button" class="btn btn-light ms-5 "><a href="Message.jsp">Back</a></button>
</body>
</html>