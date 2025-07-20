<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <title>LOGIN</title>
 <style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Segoe UI', sans-serif;
}

body {
	/* Removed background-image properties from here */
	min-height: 100vh; /* Still useful for overall page height */
	color: #fff;
	position: relative;
	/* Needed for absolute positioning of the background-img */
}

/* Styles for the fixed-top navbar */
.navbar-brand {
	color: #fff !important;
	font-weight: bold;
}

.navbar-toggler {
	border-color: rgba(255, 255, 255, 0.1);
}

.navbar-toggler-icon {
	background-image:
		url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 30 30'%3e%3cpath stroke='rgba%28255, 255, 255, 0.55%29' stroke-linecap='round' stroke-miterlimit='10' stroke-width='2' d='M4 7h22M4 15h22M4 23h22'/%3e%3c/svg%3e");
}

/* Style for the HTML <img> tag used as a background */
.body-background-img {
	position: absolute; /* Position relative to the body */
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	object-fit: cover;
	z-index: -1;
	margin-top: 55px;
}

.content-wrapper {
	padding-top: 56px; /* Space for the navbar */
	min-height: 100vh;
	display: flex;
	justify-content: flex-start;
	align-items: center;
	padding-left: 10%;
	position: relative;
	z-index: 1;
}

.login-box {
	background: rgba(0, 0, 0, 0.7);
	padding: 40px 30px;
	border-radius: 12px;
	width: 350px;
	text-align: center;
	color: #fff;
	margin-left: -40px;
	height: 540px;
}

.login-box img {
	width: 60px;
	height: 60px;
	border-radius: 50%;
	margin-bottom: 15px;
	margin-top: -15px;
}

.login-box h2 {
	margin-bottom: 25px;
	font-size: 24px;
	font-weight: bold;
}

.input-group {
	margin-bottom: 20px;
	text-align: left;
}

.input-group label {
	font-weight: 600;
	font-size: 15px;
	margin-bottom: 6px;
	display: block;
	font-weight: bold;
}

.input-group input {
	width: 100%;
	padding: 10px;
	border: none;
	background: #333;
	color: #fff;
	font-size: 14px;
	outline: none;
}

.options {
	display: flex;
	justify-content: space-between;
	font-size: 0.9em;
	margin-bottom: 20px;
	align-items: center;
}

.options label {
	display: flex;
	align-items: center;
	margin-bottom: 0;
}

.options input[type="checkbox"] {
	width: auto;
	margin-right: 5px;
}

.options a {
	color: white;
	text-decoration: none;
}

.login-btn {
	width: 100%;
	padding: 12px;
	border: none;
	border-radius: 25px;
	background: linear-gradient(to right, #cc33ff, #6600ff);
	color: white;
	font-weight: bold;
	font-size: 16px;
	cursor: pointer;
	transition: 0.3s;
}

.login-btn:hover {
	background: #0df2e6;
	color: #000;
}

.signup-link {
	margin-top: 20px;
	font-size: 0.95em;
	font-weight: bold;
}

.signup-link a {
	color: white;
	text-decoration: none;
}

.alert {
	margin-top: 10px;
	margin-bottom: 20px;
	padding: 8px 15px;
	border-radius: 5px;
	text-align: center;
}

.alert-danger {
	color: #842029;
	background-color: #f8d7da;
	border-color: #f5c2c7;
}

.alert-success {
	color: #0f5132;
	background-color: #d1e7dd;
	border-color: #badbcc;
}

.signup-link a {
	color: white;
	text-decoration: none;
	transition: color 0.3s ease;
}

.signup-link a:hover {
	color: #0df2e6;
	text-decoration: underline;
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
        <a class="navbar-brand" href="index.jsp"><i class="fas fa-arrow-left"></i> Back</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
    </div>
</nav>
<img src="images/login.jpg" alt="Background" class="body-background-img">
<div class="content-wrapper">
    <div class="login-box">
        <img src="images/user.png" alt="User Icon" />
        <h2>LOGIN</h2>
        <%
        if (request.getAttribute("success") != null) {
        %>
            <div class="alert alert-success" role="alert">
                <b><%=request.getAttribute("success") %></b>
            </div>
        <%} %>

        <% String error=(String)request.getAttribute("error");
           if(error!=null){%>
            <div class="alert alert-danger" role="alert">
                <%=error %>
            </div>
        <%} %>
        <form action="login" method="Post">
            <div class="input-group">
                <label for="username">Username</label>
                <input type="text" id="username" name="mail" placeholder="Enter Your Registered Email" required>
            </div>

            <div class="input-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="pass" placeholder="Enter Your Password" required>
            </div>

            <div class="options">
                <label><input type="checkbox"> Remember Me</label>
                <a href="password.jsp"><b>Forgot Password?</b></a>
            </div>

            <button type="submit" class="login-btn">LOGIN</button>

            <div class="signup-link">
                Don't have an Account ? <a href="signup.jsp"><b>Sign up</b></a>
            </div>
        </form>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</body>
</html>