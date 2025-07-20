<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="in.tourstravels.dao.GuideDAO, in.tourstravels.dao.GuideDAOImpl, in.tourstravels.dto.guide" %>
<%
    int gid = Integer.parseInt(request.getParameter("pid"));
    GuideDAO gdao = new GuideDAOImpl();
    guide g = gdao.getguidesinfo(gid);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Update Guides</title>
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
    <form action="addGuideAction" method="post">
        <h2>Update Guide</h2>

        <input type="hidden" name="action" value="update">
        <input type="hidden" name="guideId" value="<%= g.getGuide_id() %>">
        
        <div class="mb-2">
            <label for="image_url">Guide Name:</label>
            <input type="text" class="form-control" id="image_url" name="name" value="<%= g.getGuide_name() %>" required>
        </div>

        <div class="mb-2">
            <label for="name">Guide Image:</label>
            <input type="text" class="form-control" id="name" name="image" value="<%= g.getGuide_img() %>" required>
        </div>

         <div class="mb-2">
            <label for="image_url">Languages:</label>
            <input type="text" class="form-control" id="image_url" name="languages" value="<%= g.getLanguages() %>" required>
        </div>
       
        
         <div class="mb-2">
            <label for="image_url">Cost Per Day:</label>
            <input type="text" class="form-control" id="image_url" name="cost" value="<%= g.getDaily_charge() %>" required>
        </div>

		
        
        


        <div class="btn-group">
            <button type="submit" class="btn btn-primary">Update Guide</button>
            <a href="viewGuide.jsp" class="btn btn-secondary">Back</a>
        </div>
    </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>


</body>
</html>