<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="in.tourstravels.dto.users" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Experience the Tours and Travels</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap and Font Awesome -->
  
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">

    <style>
        body {
            margin: 0;
            padding: 0;
        }

        .navbar {
            position: fixed;
            top: 0;
            width: 100%;
            z-index: 1055; /* Higher than video */
            background-color: #f4f8f4;
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.08);
        }

        .video-section {
            position: relative;
            width: 100%;
            height: 100vh;
            z-index: 1;
            margin-top: -80px;
        }

        .video-section video {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            object-fit: cover;
            z-index: 0;
        }

        /* To push content below fixed navbar */
        
        .spacer {
            height: 80px;
        }
    </style>
</head>
<body>

<%@ include file="header1.jsp" %>

<!-- Spacer to push video below fixed navbar -->
<div class="spacer"></div>

<!-- Full-screen video background -->
<div class="video-section">
    <video autoplay muted loop>
        <source src="images/about.mp4" type="video/mp4">
    </video>
</div>

<%@ include file="dashboard2.jsp" %>


<!-- Bootstrap JS -->
<!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script> -->
<!-- footer Section -->

<%@ include file="footer.jsp" %>
</body>
</html>
