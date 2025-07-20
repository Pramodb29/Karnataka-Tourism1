<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="in.tourstravels.dto.*"%>
<%@page import="in.tourstravels.dao.*"%>

<%
    String userEmail = (String) session.getAttribute("email");
    Long userPhone = (Long) session.getAttribute("phoneno");

    PlacesDAO pdao = new PlacesDAOImpl();
    VehicleDAO vdao = new VehicleDAOImpl();
    StayDAO rdao = new StayDAOImpl();
    GuideDAO gdao = new GuideDAOImpl();

    ArrayList<places> allPackages = pdao.getallPlacesinfo();
    ArrayList<vehicle> allVehicles = vdao.getallVehiclesinfo();
    ArrayList<stay> allstays = rdao.getallStayinfo();
    ArrayList<guide> allGuides = gdao.getallGuidesinfo();

    // Parameters from request (GET)
    String selectedPackage = request.getParameter("packageName");
    String selectedPlaces = request.getParameter("places");
    String selectedimages = request.getParameter("image");

    int selectedDuration = 0;
    try {
        String durationParam = request.getParameter("duration");
        if (durationParam != null && !durationParam.isEmpty()) {
            selectedDuration = Integer.parseInt(durationParam);
        }
    } catch (Exception e) {
        selectedDuration = 0;
    }

    String selectedVehicle = request.getParameter("vehicle");

    int selectedVehicleCap = 0;
    try {
        String capacityParam = request.getParameter("capacity");
        if (capacityParam != null && !capacityParam.isEmpty()) {
            selectedVehicleCap = Integer.parseInt(capacityParam);
        }
    } catch (Exception e) {
        selectedVehicleCap = 0;
    }

    String selectedVehicleCost = request.getParameter("vehicleCost");

    String selectedResort = request.getParameter("resort");
    String selectedResortCost = request.getParameter("resortCost");
    String selectedFood = request.getParameter("food");

    String selectedGuide = request.getParameter("guide");
    String selectedGuideCost = request.getParameter("guideCost");
%>


<!-- HTML starts -->
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Tour Package Booking</title>
  <style>
    body {
      font-family: 'Segoe UI', sans-serif;
      background: #f0f9ff;
      margin: 0;
      padding: 0;
    }
    .booking-container {
      max-width: 1000px;
      background: white;
      margin: 30px auto;
      padding: 20px 30px;
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    .booking-container h2 {
      text-align: center;
      color: #007B8A;
      margin-bottom: 30px;
    }
    .form-wrapper {
      display: flex;
      gap: 40px;
      justify-content: space-between;
      flex-wrap: wrap;
    }
    .form-column {
      flex: 1;
      min-width: 45%;
    }
    .form-group {
      margin-bottom: 20px;
    }
    label {
      font-weight: bold;
      display: block;
      margin-bottom: 5px;
    }
    input[type="text"], input[type="email"], input[type="date"], input[type="number"], select {
      padding: 8px;
      width: 100%;
      border-radius: 6px;
      border: 1px solid #ccc;
    }
    .cost-section {
      text-align: center;
    }
    .cost-section button, .cost-section input {
      margin-top: 10px;
    }
    button {
      padding: 10px 20px;
      background: #007B8A;
      color: white;
      border: none;
      border-radius: 6px;
      cursor: pointer;
      width: 500px;
    }
    button:hover {
      background: #005f6a;
    }
  </style>
</head>
<body>
<div class="booking-container">
  <h2>🌄 Book Your Tour Package</h2>
  <form action="booktourAction" method="post">
    <div class="form-wrapper">

      <!-- LEFT COLUMN -->
      <div class="form-column">
        <div class="form-group">
          <label>Email Address</label>
          <input type="email" name="email" value="<%= userEmail != null ? userEmail : "" %>" required />
        </div>

        <div class="form-group">
          <label>Select Tour Package</label>
          <select name="package_name" required>
            <option value="">-- Select Package --</option>
            <% for (places p : allPackages) {
                 String sel = p.getPackage_name().equals(selectedPackage) ? "selected" : ""; %>
              <option value="<%= p.getPackage_name() %>" <%= sel %>><%= p.getPackage_name() %></option>
            <% } %>
          </select>
        </div>

        <div class="form-group">
          <label>Select Tour Places</label>
          <select name="places" required>
            <option value="">-- Select Places --</option>
            <% for (places p : allPackages) {
                 String sel = p.getSel_places().equals(selectedPlaces) ? "selected" : ""; %>
              <option value="<%= p.getSel_places() %>" <%= sel %>><%= p.getSel_places() %></option>
            <% } %>
          </select>
        </div>
        
         <div class="form-group">
          <label>Select Places image</label>
          <select name="image" required>
            <option value="">-- Select images --</option>
            <% for (places p : allPackages) {
                 String sel = p.getImage().equals(selectedimages) ? "selected" : ""; %>
              <option value="<%= p.getImage() %>" <%= sel %>><%= p.getImage() %></option>
            <% } %>
          </select>
        </div>

        <div class="form-group">
          <label>Date of Travel</label>
          <input type="date" name="date" required />
        </div>

        <div class="form-group">
          <label>Select Vehicle Type</label>
          <select name="vehicle" required>
            <option value="">-- Select Vehicle --</option>
            <% for (vehicle v : allVehicles) {
                 String sel = v.getVehicle_type().equals(selectedVehicle) ? "selected" : ""; %>
              <option value="<%= v.getVehicle_type() %>" <%= sel %>><%= v.getVehicle_type() %></option>
            <% } %>
          </select>
        </div>

        <div class="form-group">
          <label>Select Resort</label>
          <select name="resort" required>
            <option value="">-- Select Resort --</option>
            <% for (stay r : allstays) {
                 String display = r.getResort_name() + " - " + r.getLocation();
                 String sel = display.equals(selectedResort) ? "selected" : ""; %>
              <option value="<%= display %>" <%= sel %>><%= display %></option>
            <% } %>
          </select>
        </div>

        <div class="form-group">
          <label>Food and Snacks</label>
          <select name="food" required>
            <option value="">-- Select Food --</option>
            <% for (stay r : allstays) {
                 String sel = r.getFood_snacks().equals(selectedFood) ? "selected" : ""; %>
              <option value="<%= r.getFood_snacks() %>" <%= sel %>><%= r.getFood_snacks() %></option>
            <% } %>
          </select>
        </div>
      </div>

      <!-- RIGHT COLUMN -->
      <div class="form-column">
        <div class="form-group">
          <label>Phone Number</label>
          <input type="text" name="phone" value="<%= userPhone != null ? userPhone : "" %>" required />
        </div>

        <div class="form-group">
          <label>Duration (In Days)</label>
          <select name="duration" required>
            <option value="">-- Duration --</option>
            <% for (places p : allPackages) {
                String selected = (p.getDuration() == selectedDuration) ? "selected" : ""; %>
                <option value="<%= p.getDuration() %>" <%= selected %>><%= p.getDuration() %></option>
            <% } %>
          </select>
        </div>

        <div class="form-group">
          <label>Vehicle Capacity</label>
          <select name="capacity" required>
            <option value="">-- Vehicle Capacity --</option>
            <% for (vehicle v : allVehicles) {
     String selected = (v.getCapacity() == selectedVehicleCap) ? "selected" : ""; %>
   <option value="<%= v.getCapacity() %>" <%= selected %>><%= v.getCapacity() %></option>
<% } %>
            
          </select>
        </div>

        <div class="form-group">
          <label>Vehicle Cost Per Day</label>
          <select name="vehicleCost" required>
            <option value="">-- Vehicle Cost --</option>
            <% for (vehicle v : allVehicles) {
                 String sel = String.valueOf(v.getCost_per_day()).equals(selectedVehicleCost) ? "selected" : ""; %>
              <option value="<%= v.getCost_per_day() %>" <%= sel %>><%= v.getCost_per_day() %></option>
            <% } %>
          </select>
        </div>

        <div class="form-group">
          <label>Select Guide</label>
          <select name="guide" required>
            <option value="">-- Select Guide --</option>
            <% for (guide g : allGuides) {
                 String gInfo = g.getGuide_name() + " - " + g.getLocation();
                 String sel = gInfo.equals(selectedGuide) ? "selected" : ""; %>
              <option value="<%= gInfo %>" <%= sel %>><%= gInfo %></option>
            <% } %>
          </select>
        </div>

        <div class="form-group">
          <label>Guide Cost</label>
          <select name="guideCost" required>
            <option value="">-- Guide Cost --</option>
            <% for (guide g : allGuides) {
                 String sel = String.valueOf(g.getDaily_charge()).equals(selectedGuideCost) ? "selected" : ""; %>
              <option value="<%= g.getDaily_charge() %>" <%= sel %>><%= g.getDaily_charge() %></option>
            <% } %>
          </select>
        </div>

        <div class="form-group">
          <label>Resort Cost/Day</label>
          <select name="resortCost" required>
            <option value="">-- Resort Cost --</option>
            <% for (stay r : allstays) {
                 String sel = String.valueOf(r.getCost_per_day()).equals(selectedResortCost) ? "selected" : ""; %>
              <option value="<%= r.getCost_per_day() %>" <%= sel %>><%= r.getCost_per_day() %></option>
            <% } %>
          </select>
        </div>
      </div>
    </div>

    <!-- TOTAL COST -->
    <div class="cost-section">
      <button type="button" onclick="calculateAmount()">Calculate Amount</button><br />
      <label>Total Amount (₹)</label>
      <input type="text" name="total_amount" id="total_amount" readonly value="0" style="width: 480px;" />
    </div>

    <div class="cost-section" style="margin-top: 20px;">
      <button type="submit">Book Your Tour</button>
    </div>
  </form>
</div>

<script>
function calculateAmount() {
  const duration = parseInt(document.querySelector("select[name='duration']").value || 1);
  const vehicle = parseInt(document.querySelector("select[name='vehicleCost']").value || 0);
  const resort = parseInt(document.querySelector("select[name='resortCost']").value || 0);
  const guide = parseInt(document.querySelector("select[name='guideCost']").value || 0);
  const total = duration * (vehicle + resort + guide);
  document.getElementById("total_amount").value = total;
}
</script>
</body>
</html>
