<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<style>
     body{
            background: #000;
        }
        .am{
           
            
            
        }
        .text{
           border: 2px solid #fff;
        }
        .sec{
            width: 100%;
            height: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
        }
        .text{
          
        }
    
</style>
</head>
<body>
     <body style="width: 100%; height: 130vh;">
    <div class="sec">
        <div class="p-4 text ">
            <div class="am">
                <p class="text-light me-5 ">Amount</p>
                <h3 class="text-light me-5">$800<i class="bi bi-patch-check-fill" style="color: green;"></i></h3>
                <p class="text-light">Rupees Two Hundred Only</p>
                <button type="button" class="btn btn-outline-success text-light"><i class="bi bi-tag"></i>Add Tag</button>
            </div>
            <br>
            <div  class="am text-light">
                <p >To</p>
                <h4>Mahek Momin</h4>
                <p>Mahek Javid Momin<i class="bi bi-patch-check-fill" style="color: cornflowerblue;"></i></p>
                <br>
                <p>UPI ID:111222333444@Gpay</p>
                <p>State Bank Of India - 1234</p>
                <button type="button" class="btn btn-outline-info">Pay Again</button>
                <button type="button" class="btn btn-outline-info">View History</button>
        
            </div>
        
            <br>
        
            <div  class="am text-light">
                <p >From</p>
                <h4>${s_name}</h4>
                <p>India Post Payment Bank-9090 </p>
                <p class="text-info">Check Balance</p>
            </div>
        
            <div  class="am text-light">
        
                <h5>Paid at 12:59PM, 7 April 2024</h5>
                <p>UPI Ref No:111222333444</p>
                <p class="text-info">Payment Details</p>
            </div>
        </div>
       <button type="button" class="btn btn-light  "><a href="NEWADMIN.jsp">Back</a></button>
    </div>
   
     

</body>
</html>