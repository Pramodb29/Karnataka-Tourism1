<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Guide</title>
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
        height: 650px;
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
        background-color: #007bff;
        color: white;
        font-weight: bold;
        border: none;
        border-radius: 6px;
        cursor: pointer;
        transition: background 0.3s;
    }

    button:hover {
        background-color: #0069d9;
    }

    .back-button {
        margin-top: 10px;
        background-color: grey;
    }
</style>
</head>
<body>

<div class="form-container">
    <h2>Add New Guide</h2>
    <form action="addGuideAction" method="post">
        <input type="hidden" name="action" value="add">

        <label for="guide_name">Guide Name:</label>
        <input type="text" id="guide_name" name="guide_name" required>

        <label for="guide_img">Guide Image URL:</label>
        <input type="text" id="guide_img" name="guide_img" required>

       <label for="location">Location:</label>
       <input type="text" id="location" name="location" required>
       

        <label for="languages">Languages:</label>
        <input type="text" id="languages" name="languages" required>

        <label for="day_charge">Day Charge (in ₹):</label>
        <input type="number" id="day_charge" name="day_charge" required>

        <label for="phone_no">Phone Number:</label>
        <input type="text" id="phone_no" name="phone_no" required>

        <button type="submit" name="add">Add Guide</button>
        <button type="button" class="back-button" onclick="location.href='guides.jsp'">Back</button>
    </form>
</div>

</body>
</html>
