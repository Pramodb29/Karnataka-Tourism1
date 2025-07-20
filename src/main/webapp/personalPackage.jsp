<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Personal Package Here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
<style>
    body {
        background-color: #f8f9fa;
        margin: 0;
        padding: 0;
    }

    .form-container {
        max-width: 600px;
      
        margin: 20px auto;
        background: #ffffff;
        padding: 20px 20px 15px;
        border-radius: 10px;
        box-shadow: 0 0 6px rgba(0, 0, 0, 0.1);
    }

    .form-container h2 {
        text-align: center;
        margin-bottom: 25px;
        font-weight: 600;
        font-size: 25px;
    }

    .form-label {
        font-size: 16px;
        margin-bottom: 4px;
    }

    .form-control, .form-select {
        padding: 6px 10px;
        font-size: 14px;
    }

    .mb-2 {
        margin-bottom: 10px !important;
    }

    .btn-primary, .btn-secondary {
        width: 120px;
        margin-right: 8px;
        font-weight: bold;
        height: 38px;
        font-size: 16px;
        
    }
 
    
</style>
</head>
<body>

<div class="form-container">
    <h2>Add Package</h2>
    <form action="packageAction" method="post">
        <input type="hidden" name="action" value="add">

        <div class="row">
            <div class="mb-2 col-md-6">
                <label for="image_url" class="form-label">Image URL</label>
                <input type="text" class="form-control" name="image_url" id="image_url">
            </div>

            <div class="mb-2 col-md-6">
                <label for="pname" class="form-label">Package Name</label>
                <input type="text" class="form-control" name="pname" id="pname" required>
            </div>

            <div class="mb-2 col-md-6">
                <label for="pickup" class="form-label">Pickup and Drop Location</label>
                <input type="text" class="form-control" name="pickup" id="pickup" required>
            </div>

          

            <div class="mb-2 col-md-6">
                <label for="places" class="form-label">Places Covered</label>
                <input type="text" class="form-control" name="places" id="places" required>
            </div>

            <div class="mb-2 col-md-6">
                <label for="time" class="form-label">Duration (Days)</label>
                <input type="number" class="form-control" name="time" id="time" required>
            </div>

            <div class="mb-2 col-md-6">
                <label for="stayandfood" class="form-label">Stay and Food</label>
                <select class="form-select" name="stayandfood" id="stayandfood" required>
                    <option value="">-- Select --</option>
                    <option value="Included">Included</option>
                    <option value="Not Included">Not Included</option>
                </select>
            </div>

            <div class="mb-2 col-md-6">
                <label for="price" class="form-label">Price/Person</label>
                <input type="number" class="form-control" name="price" id="price" required>
            </div>

            <div class="mb-2 col-md-6">
                <label for="slots" class="form-label">Slots Available</label>
                <input type="number" class="form-control" name="slots" id="slots" required>
            </div>

            <div class="mb-2 col-md-6">
                <label for="vnumber" class="form-label">Vehicle Number</label>
                <input type="text" class="form-control" name="vnumber" id="vnumber" required>
            </div>

            <div class="mb-2 col-6">
                <label for="mnumber" class="form-label">Contact Number</label>
                <input type="tel" class="form-control" name="mnumber" id="mnumber" required>
            </div>
        </div>

        <div class="d-flex justify-content-center mt-3">
            <input type="submit" value="Add" class="btn btn-primary">
            <a href="adminDashboard.jsp" class="btn btn-secondary">Back</a>
        </div>
    </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
