<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.example.demo11.UserSurvey" %>
<%
    UserSurvey user = (UserSurvey) session.getAttribute("surveyUser");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Thank You</title>
    <link rel="stylesheet" href="../css/main.css" type="text/css">
</head>
<body>
<div class="container">
    <h2>Thank You for Completing the Survey!</h2>
    <p>We have received your information as follows:</p>
    <ul>
        <li><b>Email:</b> <%= user.getEmail() %></li>
        <li><b>First Name:</b> <%= user.getFirstName() %></li>
        <li><b>Last Name:</b> <%= user.getLastName() %></li>
        <li><b>Heard From:</b> <%= user.getHeardFrom() %></li>
        <% if (user.getUpdates() != null && !user.getUpdates().isEmpty()) { %>
        <li><b>Updates:</b> <%= user.getUpdates() %></li>
        <% } %>
        <% if (user.getContactVia() != null && !user.getContactVia().isEmpty()) { %>
        <li><b>Preferred Contact Via:</b> <%= user.getContactVia() %></li>
        <% } %>
    </ul>

    <p><a href="index.jsp">Return to Survey</a></p>
</div>
</body>
</html>
