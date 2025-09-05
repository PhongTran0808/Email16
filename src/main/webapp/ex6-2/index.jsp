<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../includes/header.html" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Survey Form</title>
    <link rel="stylesheet" href="../css/main.css" type="text/css">
</head>
<body>
<div class="container">
    <h1>Survey Form</h1>
    <form action="../survey" method="post">
        <label>Email:</label>
        <input type="email" name="email" required><br>

        <label>First Name:</label>
        <input type="text" name="firstName" required><br>

        <label>Last Name:</label>
        <input type="text" name="lastName" required><br>

        <label>Heard From:</label>
        <select name="heardFrom">
            <option value="Search Engine">Search Engine</option>
            <option value="Friend">Friend</option>
            <option value="Other">Other</option>
        </select><br>

        <label>Updates:</label>
        <input type="checkbox" name="updates" value="Yes"> Yes, send me updates<br>

        <label>Contact Via:</label>
        <input type="radio" name="contactVia" value="Email"> Email
        <input type="radio" name="contactVia" value="Phone"> Phone
        <input type="radio" name="contactVia" value="Mail"> Mail<br>

        <input type="submit" value="Submit">
    </form>
</div>
</body>
</html>
