<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ page import="in.tourstravels.dao.VehicleDAO, in.tourstravels.dao.VehicleDAOImpl, in.tourstravels.dto.vehicle" %>
<%
    int vid = Integer.parseInt(request.getParameter("pid"));
    VehicleDAO vdao = new VehicleDAOImpl();
    vehicle v = vdao.getvehiclesinfo(vid);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Update Vehicles</title>
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
    <form action="addVehicleAction" method="post">
        <h2>Update Vehicle</h2>

        <input type="hidden" name="action" value="update">
        <input type="hidden" name="vehicleId" value="<%= v.getVehicle_id() %>">

        <div class="mb-2">
            <label for="name">Vehicle Image:</label>
            <input type="text" class="form-control" id="name" name="image" value="<%= v.getVehicle_img() %>" required>
        </div>

        <div class="mb-2">
            <label for="image_url">Vehicle Type:</label>
            <input type="text" class="form-control" id="image_url" name="vehicle_type" value="<%= v.getVehicle_type() %>" required>
        </div>
        
       
        
         <div class="mb-2">
            <label for="image_url">Cost Per Day:</label>
            <input type="text" class="form-control" id="image_url" name="cost" value="<%= v.getCost_per_day() %>" required>
        </div>

		 <div class="mb-2">
            <label for="image_url">Driver No:</label>
            <input type="text" class="form-control" id="image_url" name="driverno" value="<%= v.getDriverno() %>" required>
        </div>
        
         <div class="mb-2">
            <label for="image_url">Vehicle Number:</label>
            <input type="text" class="form-control" id="image_url" name="vnumber" value="<%= v.getVehicle_number() %>" required>
        </div>


        <div class="btn-group">
            <button type="submit" class="btn btn-primary">Update Vehicle</button>
            <a href="viewVehicle.jsp" class="btn btn-secondary">Back</a>
        </div>
    </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>


</body>
</html>