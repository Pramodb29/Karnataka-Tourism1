<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Vehicle</title>
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: #f2f2f2;
        padding: 40px;
    }

    .form-container {
        max-width: 550px;
        margin: auto;
        background: white;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0px 0px 12px rgba(0, 0, 0, 0.1);
        margin-top:-30px;
        height: 630px;
    }

    .form-container h2 {
        text-align: center;
        margin-bottom: 25px;
        color: #333;
        margin-top:-5px;
    }

    label {
        display: block;
        margin-bottom: 8px;
        font-weight: bold;
        margin-top:-3px;
    }

    input[type="text"],
    input[type="number"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 20px;
        border: 1px solid #ccc;
        border-radius: 6px;
        box-sizing: border-box;
    }

    button {
        width: 100%;
        padding: 12px;
        background-color: #28a745;
        color: white;
        font-weight: bold;
        border: none;
        border-radius: 6px;
        cursor: pointer;
        transition: background 0.3s;
    }

    button:hover {
        background-color: #218838;
    }

    .back-button {
        margin-top: 10px;
        background-color: grey;
    }
</style>
</head>
<body>

<div class="form-container">
    <h2>Add New Vehicle</h2>
    <form action="addVehicleAction" method="post">
    <input type="hidden" name="action" value="add">
    
    
    	 <label for="vehicle_type">Vehicle Image:</label>
        <input type="text" id="vehicle_type" name="vehicle_img" required>
        
        <label for="vehicle_type">Vehicle Type:</label>
        <input type="text" id="vehicle_type" name="vehicle_type" required>

        <label for="capacity">Capacity:</label>
        <input type="number" id="capacity" name="capacity" required>

        <label for="cost_per_day">Cost Per Day:</label>
        <input type="number" id="cost_per_day" name="cost_per_day" required>

        <label for="driverno">Driver Number:</label>
        <input type="text" id="driverno" name="driverno" required>

        <label for="vehicle_number">Vehicle Number:</label>
        <input type="text" id="vehicle_number" name="vehicle_number" required>

        <button type="submit" value="add" name="add">Add Vehicle</button>
        <button type="button" class="back-button" onclick="location.href='familyPackages.jsp'">Back</button>
    </form>
</div>

</body>
</html>
