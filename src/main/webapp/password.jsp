<%@ page language="java" contentType="text/html; charset=UTF-8" 
     pageEncoding="UTF-8"%> 
 <!DOCTYPE html> 
 <html lang="en"> 
 <head> 
   <meta charset="UTF-8" /> 
   <meta name="viewport" content="width=device-width, initial-scale=1.0"/> 
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"> 
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"> 

   <title>Forgot Password</title> 
   <style> 
     * { 
       margin: 0; 
       padding: 0; 
       box-sizing: border-box; 
       font-family: 'Segoe UI', sans-serif; 
     } 

     body { 
       background-image:url("images/pass.png"); 
       background-size: cover;
       background-position: center;
       background-repeat: no-repeat;
       background-attachment: fixed;
       height: 100vh; 
       color: #fff; 
       display: flex; 
       justify-content: flex-start; /* Aligns content to the left */
       align-items: center; 
       padding-left: 10%; /* Adds space from the left edge */
       padding-top: 56px; /* Space for the fixed navbar */
     } 

     .navbar { 
         position: fixed; 
         width: 100%; 
         top: 0; 
         left: 0; 
         z-index: 1000; 
     } 

     .container { 
       width: 100%; 
       height: 90vh; 
       display: flex; 
       /* Removed justify-content: center; to allow left alignment */
       align-items: center; 
       padding: 20px; 
     } 

     .form-box { 
       background: rgba(0, 0, 0, 0.7); 
       width: 430px; 
       height: 540px; 
       padding: 20px; 
       border-radius: 10px; 
       text-align: center; 
       margin-top:-10px; 
        margin-left:-150px; 
     } 

     .form-box h2 { 
       margin-bottom: 25px; 
     } 

     form { 
       display: flex; 
       flex-direction: column; 
       gap:7px; 
       text-align: left; 
       margin-top: 20px; 
     } 

     label { 
       display: block; 
       font-size: 16px; 
       color: #ccc; 
       font-weight: bold; 
     } 

     input { 
       width: 100%; 
       padding: 8px; 
       border: none; 
       border-radius: 20px; 
       background: #333; 
       color: #fff; 
       font-size: 14px; 
       outline: none; 
     } 

     button { 
       width: 100%; 
       padding: 10px; 
       border: none; 
       border-radius: 25px; 
       background: linear-gradient(to right, #cc33ff, #6600ff); 
       color: #fff; 
       font-weight: bold; 
       font-size: 16px; 
       cursor: pointer; 
       transition: background 0.3s ease; 
       margin-top: 10px; 
     } 

     button:hover { 
       background: #0cd2ca; 
       color: #000; 
     } 

     p { 
       margin-top: 15px; 
       font-weight: bold; 
     } 

     p a { 
       color: #b84dff; 
       text-decoration: underline; 
     } 
   </style> 
 </head> 
 <body> 
 <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark"> 
     <div class="container-fluid"> 
         <a class="navbar-brand" href="index.jsp"><i class="fas fa-arrow-left"></i> <b>Back</b></a> 
         <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation"> 
             <span class="navbar-toggler-icon"></span> 
         </button> 
     </div> 
 </nav> 

    <div class="container"> 
     <div class="form-box"> 
     <h2><b>FORGOT PASSWORD</b></h2> 
      <% String msg=(String)request.getAttribute("success");  
       if(msg!=null){%> 
      <div class="alert alert-success" role="alert"  
      style="height:25px; width:320px; font-size:16px; font-weight:bold; display:flex; align-items:center; justify-content:center;"> 
       <%=msg %> 
       </div> 
       <%} %> 
       <% String error=(String)request.getAttribute("error");  
       if(error!=null){%> 
       <div class="alert alert-danger" role="alert"  
      style="height:25px; width:320px; font-size:16px; font-weight:bold; display:flex; align-items:center; justify-content:center;"> 
       <%=error %> 
       </div> 
       <%} %> 
       
     <form action="password" method="post"> 
     <label for="phoneno">Phone No</label> 
         <input type="number" name="phone" id="phoneno" placeholder="Enter your Phone No" required /> 

         <label for="email">Email</label> 
         <input type="email" name="email" id="email" placeholder="Enter your registered Email" required /> 

         <label for="password">Password</label> 
         <input type="password" name="password" id="password" placeholder="Enter new Password" required /> 

         <label for="confirm-password">Confirm Password</label> 
         <input type="password" name="confirmPassword" id="confirm-password" placeholder="Confirm Password" required /> 

         <button type="submit">Reset Password</button> 
       </form> 
       <p>Remember your password? <a href="login.jsp"><b>Login</b></a></p> 
     </div> 
   </div> 
 </body> 
 </html>