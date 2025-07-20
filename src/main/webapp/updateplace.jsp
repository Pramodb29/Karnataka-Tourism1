<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="in.tourstravels.dao.PlacesDAO, in.tourstravels.dao.PlacesDAOImpl, in.tourstravels.dto.places" %>
<%
    int id = Integer.parseInt(request.getParameter("pid"));
    PlacesDAO dao = new PlacesDAOImpl();
    places p = dao.getplacesinfo(id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Places</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            background-color: #f4f6f9;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            padding: 30px;
        }
        .form-container {
            background-color: #fff;
            padding: 20px 25px;
            max-width: 500px;
            margin: auto;
            border-radius: 12px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.15);
        }
        h2 {
            text-align: center;
            margin-bottom: 30px;
            font-weight: 700;
            color: #343a40;
        }
        label {
            font-weight: 600;
            margin-top: 5px;
        }
        input[type="text"] {
            height: 40px;
            padding: 10px;
            margin-top:5px;
        }
        .btn-primary, .btn-secondary {
            width: 48%;
            padding: 10px;
        }
        .btn-group {
            display: flex;
            justify-content: space-between;
            margin-top: 25px;
        }
    </style>
</head>
<body>
<div class="form-container">
    <form action="addPlaceAction" method="post">
        <h2>Update Places</h2>

        <input type="hidden" name="action" value="update">
        <input type="hidden" name="packageId" value="<%= p.getPlace_id() %>">

        <div class="mb-2">
            <label for="name">Places Name:</label>
            <input type="text" class="form-control" id="name" name="name" value="<%= p.getSel_places() %>" required>
        </div>

        <div class="mb-2">
            <label for="image_url">Image URL:</label>
            <input type="text" class="form-control" id="image_url" name="image_url" value="<%= p.getImage() %>" required>
        </div>



        <div class="btn-group">
            <button type="submit" class="btn btn-primary">Update Places</button>
            <a href="viewfamilyPackages.jsp?Places-Updated-Successfully" class="btn btn-secondary">Back</a>
        </div>
    </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>