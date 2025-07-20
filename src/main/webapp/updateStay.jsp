<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="in.tourstravels.dao.StayDAO, in.tourstravels.dao.StayDAOImpl, in.tourstravels.dto.stay" %>
<%
    int sid = Integer.parseInt(request.getParameter("pid"));
    StayDAO sdao = new StayDAOImpl();
   stay s = sdao.getStaysinfo(sid);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Update Stay</title>
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
    <form action="addStayAction" method="post">
        <h2>Update Stay</h2>

        <input type="hidden" name="action" value="update">
        <input type="hidden" name="StayId" value="<%= s.getStay_id() %>">

        <div class="mb-2">
            <label for="name">Stay Image:</label>
            <input type="text" class="form-control" id="name" name="image" value="<%= s.getResort_img() %>" required>
        </div>

        <div class="mb-2">
            <label for="image_url">Resort Name:</label>
            <input type="text" class="form-control" id="image_url" name="resort_name" value="<%=s.getResort_name() %>" required>
        </div>
        
       
        
         <div class="mb-2">
            <label for="image_url">Location:</label>
            <input type="text" class="form-control" id="image_url" name="location" value="<%= s.getLocation() %>" required>
        </div>

		 <div class="mb-2">
            <label for="image_url">Cost Per Day:</label>
            <input type="text" class="form-control" id="image_url" name="cost" value="<%= s.getCost_per_day() %>" required>
        </div>
        


        <div class="btn-group">
            <button type="submit" class="btn btn-primary">Update Stay</button>
            <a href="viewStay.jsp" class="btn btn-secondary">Back</a>
        </div>
    </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>




</body>
</html>