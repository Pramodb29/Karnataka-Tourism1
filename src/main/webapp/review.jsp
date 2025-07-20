<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="in.tourstravels.dto.users" %>
<%@ page import="in.tourstravels.dto.booking" %>
<%
    users user = (users) request.getAttribute("user");
  
    if (user == null) {
        user = (users) session.getAttribute("users");
    }
   
    String uname = "";
    String email = "";
    
    if (user != null) {
        uname = user.getFname();
        email = user.getEmail();
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Rate Your Experience - Tours & Travels</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css">
  <style>
    body {
      background-color: #f0f2f5;
      display: flex;
      justify-content: center;
      align-items: center;
      min-height: 100vh;
      margin: 0;
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }
    .wrapper {
      max-width: 600px;
      width: 100%;
      margin: 20px;
      background: #ffffff;
      padding: 40px;
      border-radius: 12px;
      box-shadow: 0 8px 20px rgba(0,0,0,0.1);
      border: 1px solid #e0e0e0;
    
    }
    h3 {
      color: #333;
      font-weight: 600;
      margin-bottom: 20px;
      margin-top: -20px;
    }
    .form-group {
        margin-bottom: 15px;
    }
    .form-group label {
        margin-bottom: 5px;
        display: block;
    }
    .form-control:focus {
      border-color: #ffc107;
      box-shadow: 0 0 0 0.25rem rgba(255,193,7,0.25);
    }
    .rating {
      font-size: 2.5rem;
      color: #ccc;
      display: flex;
      justify-content: center;
      gap: 5px;
      margin-bottom: 25px;
    }
    .star {
      cursor: pointer;
      transition: color 0.2s ease-in-out, transform 0.2s ease-in-out;
    }
    .star:hover {
      transform: scale(1.1);
    }
    .star.active, .star:hover {
      color: #ffc107;
    }
    .bxs-star {
      color: #ffc107;
    }
    .btn-warning {
      background-color: #ffc107;
      border-color: #ffc107;
      color: #333;
      font-weight: bold;
      padding: 8px 0;
      height: 40px;
      transition: background-color 0.2s ease-in-out, border-color 0.2s ease-in-out, color 0.2s ease-in-out;
    }
    .btn-warning:hover {
      background-color: #e0a800;
      border-color: #e0a800;
      color: #212529;
    }
    textarea {
      resize: vertical;
      min-height: 100px;
    }
    .alert {
        margin-bottom: 20px;
        font-weight: 500;
    }
  </style>
</head>
<body>
  <div class="wrapper">
    <h3 class="text-center mb-4">Rate Your Experience</h3>

    <% if (request.getAttribute("status") != null) { %>
        <div class="alert alert-info text-center" style="height:40px;margin-top:-15px;font-weight:bold;display:flex;align-items:center;justify-content:center;"><%= request.getAttribute("status") %></div>
    <% } %>

    <%
        if (user == null ) {
    %>
        <div class="alert alert-danger text-center" role="alert">
            <h4 class="alert-heading">Information Missing!</h4>
            <p>We couldn't retrieve all the necessary booking or user details. Please ensure you access this page through the proper application flow (e.g., after a booking).</p>
            <hr>
            <p class="mb-0">If the issue persists, please contact support.</p>
        </div>
    <%
        } else {
    %>
          <form method="POST" action="reviewAction">
            <div class="rating mb-4" id="star-rating">
              <input type="hidden" name="rating" id="rating-value" value="0">
              <i class='bx bx-star star' data-value="1"></i>
              <i class='bx bx-star star' data-value="2"></i>
              <i class='bx bx-star star' data-value="3"></i>
              <i class='bx bx-star star' data-value="4"></i>
              <i class='bx bx-star star' data-value="5"></i>
            </div>

            <div class="form-group">
              <label for="uname">Name</label>
              <input type="text" id="uname" name="uname" class="form-control" value="<%= uname %>" readonly>
            </div>

            <div class="form-group">
              <label for="email">Email</label>
              <input type="email" id="email" name="email" class="form-control" value="<%= email %>" readonly>
            </div>

            <div class="form-group">
              <label for="message">Your Review</label>
              <textarea id="message" name="message" class="form-control" rows="4" placeholder="Share your experience..."></textarea>
            </div>

            <button type="submit" class="btn btn-warning w-100" style="margin-top:5px;text-align:center;">Submit Review</button>
            <a href="dashboard.jsp" class="btn btn-primary w-100" style="margin-top:10px;">Back</a>
          </form>
    <%
        }
    %>
  </div>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
  <script>
    const allStar = document.querySelectorAll('.rating .star');
    const ratingValueInput = document.getElementById('rating-value');

    allStar.forEach(star => {
      star.addEventListener('click', function () {
        const value = parseInt(this.dataset.value);
        ratingValueInput.value = value;

        allStar.forEach(s => {
          s.classList.remove('bxs-star', 'active');
          s.classList.add('bx-star');
        });

        for (let i = 0; i < value; i++) {
          allStar[i].classList.add('bxs-star', 'active');
          allStar[i].classList.remove('bx-star');
        }
      });

      star.addEventListener('mouseover', function() {
        const value = parseInt(this.dataset.value);
        allStar.forEach((s, idx) => {
          if (idx < value) {
            s.classList.add('bxs-star');
            s.classList.remove('bx-star');
          } else if (!s.classList.contains('active')) {
             s.classList.remove('bxs-star');
             s.classList.add('bx-star');
          }
        });
      });

      star.addEventListener('mouseout', function() {
        const activeValue = parseInt(ratingValueInput.value);
        allStar.forEach((s, idx) => {
          if (idx < activeValue) {
            s.classList.add('bxs-star');
            s.classList.remove('bx-star');
          } else {
            s.classList.remove('bxs-star');
            s.classList.add('bx-star');
          }
        });
      });
    });
  </script>
</body>
</html>