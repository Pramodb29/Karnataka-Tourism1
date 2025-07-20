<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Place</title>
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: #f2f2f2;
        padding: 40px;
    }

    .form-container {
        max-width: 500px;
        margin: auto;
        background: white;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0px 0px 12px rgba(0, 0, 0, 0.1);
        width:600px;
        margin-top:-20px;
    }

    .form-container h2 {
        text-align: center;
        margin-bottom: 25px;
        color: #333;
        margin-top:-3px;
    }

    label {
        display: block;
        margin-bottom: 8px;
        font-weight: bold;
    }

    input[type="text"],input[type="number"],
    input[type="datetime-local"],
    textarea {
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
        font-size:15px;
        border: none;
        border-radius: 6px;
        cursor: pointer;
        transition: background 0.3s;
    }

    button:hover {
        background-color: #0056b3;
    }
   
</style>
</head>
<body>

<div class="form-container">
    <h2>Add New Place</h2>
    <form action="addPlaceAction" method="post">
    <input type="hidden" name="action" value="add">
    
     <label for="sel_places">Package Name:</label>
        <input type="text" name="pname" id="sel_places" required>
    
        <label for="sel_places">Places Name:</label>
        <input type="text" name="addplaces" id="sel_places" required>

        <label for="desc">Description:</label>
        <textarea name="desc" id="desc" rows="4" required></textarea>

        <label for="image">Image URL:</label>
        <input type="text" name="image" id="image" placeholder="https://example.com/image.jpg" required>
			
			
        <label for="time">Duration:</label>
        <input type="number" name="duration" id="image"  required>
        
        <button type="submit" value="add" name="add">Add Place</button>
        
        <button type="button" onclick="location.href='familyPackages.jsp'" style="margin-top: 10px; background-color: grey;">
            Back
        </button>
        
        
        
        </form>
 
</div>

</body>
</html>