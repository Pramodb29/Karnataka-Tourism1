<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Stay Details</title>
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
        margin-top: -30px;
        height: 550px;
    }

    .form-container h2 {
        text-align: center;
        margin-bottom: 25px;
        color: #333;
        margin-top: -5px;
    }

    label {
        display: block;
        margin-bottom: 8px;
        font-weight: bold;
        margin-top: -3px;
    }

    input[type="text"],
    input[type="number"],
    input[type="datetime-local"] {
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
    <h2>Add Stay Details</h2>
    <form action="addStayAction" method="post">
        <input type="hidden" name="action" value="add">

        <label for="resort_name">Resort Name:</label>
        <input type="text" id="resort_name" name="resort_name" required>

        <label for="Location">Location:</label>
        <input type="text" id="Location" name="Location" required>

        <label for="resort_img">Resort Image URL:</label>
        <input type="text" id="resort_img" name="resort_img" required>

        <label for="cost_per_day">Cost Per Day:</label>
        <input type="number" id="cost_per_day" name="cost_per_day" required>

        <label for="food_snacks">Food & Snacks Info:</label>
        <input type="text" id="food_snacks" name="food_snacks" required>

      
        <button type="submit" value="add" name="add">Add Stay</button>
        <button type="button" class="back-button" onclick="location.href='familyPackages.jsp'">Back</button>
    </form>
</div>

</body>
</html>
