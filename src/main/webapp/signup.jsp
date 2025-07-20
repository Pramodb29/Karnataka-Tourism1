<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Sign Up</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: 'Segoe UI', sans-serif;
    }

    body {
       
        height: 120vh; 
        color: #fff;
        display: flex;
        justify-content: flex-start;
        align-items: center; /* Keep vertical centering */
        padding-left: 10%;
        position: relative;
        overflow-x: hidden; 
    }

    /* Style for the HTML <img> tag used as a background */
    
    .body-background-img {
        position: absolute; 
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        object-fit: cover; 
        z-index: -1; 
        margin-top:55px;
    }

    .container {
        width: 100%;
        display: flex;
        justify-content: flex-start;
        align-items: center;
        padding: 20px;
        position: relative; 
        z-index: 1;
        
    }

    .signup-box {
        background: rgba(0, 0, 0, 0.7);
        width: 600px;
        padding: 30px;
        border-radius: 10px;
        text-align: center;
       
        margin-left:-150px;
        
        height:620px;
    }

    .signup-box img {
      height: 50px;
      width: 50px;
      margin-bottom: 10px;
      margin-top: -20px;
    }

    .signup-box h4 {
      margin-top: -10px;
    }

    .form-wrapper {
      display: flex;
      flex-direction: column;
      gap: 15px;
      margin-bottom: -25px;
      margin-top: 20px;
    }

    .input-group {
      display: flex;
      justify-content: space-between;
      gap: 15px;
      margin-top:10px;
    }
   
    .input-group > div {
      flex: 1;
    }

    label {
      display: block;
      margin-bottom: 4px;
      font-size: 16px;
      color: white;
      text-align: left;
      font-weight: bold;
      margin-top: -5px;
    }

    input,
    select {
      width: 100%;
      padding: 8px;
      border: none;
      border-radius: 20px;
      background: #333;
      color: #fff;
      font-size: 14px;
      outline: none;
    }

    .signup-btn {
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
    }

    .signup-btn:hover {
      background: #0cd2ca;
      color: #000;
    }

    .login-link {
      font-weight: bold;
    }

    .login-link a {
      color: white; 
      text-decoration: none;
    }
    
    .input-group {
      display: flex;
      justify-content: space-between;
      gap: 15px;
    }
    .input-group > div {
      flex: 1;
    }

   
    .alert {
        margin-top: 10px; 
        margin-bottom: 20px; 
        padding: 8px 15px;
        border-radius: 5px; 
        font-weight:bold;
    }

    .alert-danger {
        color: #842029; 
        background-color: #f8d7da;
        border-color: #f5c2c7;
        font-weight:bold;
    }

    .alert-success {
        color: #0f5132;
        background-color: #d1e7dd;
        border-color: #badbcc;
        font-weight:bold;
    }
    .options a {
	color: white;
	text-decoration: none;
	transition: color 0.3s ease;
}

.options a:hover {
	color: #0df2e6;
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
 <img src="images/sign.jpg" alt="Background" class="body-background-img">

 <div class="container">
    <div class="signup-box">
    <h4><b>CREATE YOUR ACCOUNT</b></h4>
      
      <%-- Display success message --%>
      <%if(request.getAttribute("success")!=null){ %>
      <div class="alert alert-success" align="center">
      <%=request.getAttribute("success") %>
      </div>
      <%}%>
      
      <%-- Display error message --%>
      <%if(request.getAttribute("error")!=null){ %>
      <div class="alert alert-danger" role="alert">
      <%=request.getAttribute("error") %>
      </div>
    <%}%>
     
        <form action="signup" method="Post" class="form-wrapper">
           <div class="input-group">
           
          <div> 
            <label for="fname">First Name</label>
            <input type="text" id="fname" name="fname" placeholder="Enter Your First Name" required />
          </div>
          <div>
            <label for="lname">Last Name</label>
            <input type="text" id="lname" name="lname" placeholder="Enter Your Last Name" required />
          </div>
        </div>

        <div>
          <label for="phone">Phone No</label>
          <input type="number" id="phone" name="phoneno" placeholder="Enter Your Phone No"  min="10" maxlength="10" required />
        </div>

        <div>
          <label for="emailid">Email ID</label>
          <input type="email" id="emailid" name="email" placeholder="Enter Your Email ID" required />
        </div>

        <div class="input-group">
          <div>
            <label for="password">Password</label>
            <input type="password" id="password" name="password" placeholder="Enter Password" required />
          </div>
          <div>
            <label for="confirm-password">Confirm Password</label>
            <input type="password" id="confirm-password" name="confirmpassword" placeholder="Confirm Password" required />
          </div>
        </div>
        
        <div>
          <label for="address">Address</label>
          <input type="text" id="address" name="address" placeholder="Enter Your Address" required />
        </div>


        <button type="submit" class="signup-btn">REGISTER</button>
      <div class="options">
      <p class="login-link">Already have an account? <a href="login.jsp">Login</a></p>
      </div>
      </form>
      </div>
    </div>
  </div>
</body>
</html>