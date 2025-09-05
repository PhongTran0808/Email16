<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../includes/header.html" %>
<head>
    <meta charset="UTF-8">
    <title>Survey Form</title>
    <link rel="stylesheet" href="../css/main.css" type="text/css">
</head>
<div class="container">
    <h1>Join our email list</h1>
    <p>To join our email list, enter your name and email address below.</p>

    <form action="../emailList" method="post">

    <input type="hidden" name="action" value="add">

        <label>Email:</label>
        <label>
            <input type="email" name="email" value="${sessionScope.user.email}" required>
        </label><br>

        <label>First Name:</label>
        <label>
            <input type="text" name="firstName" value="${sessionScope.user.firstName}" required>
        </label><br>

        <label>Last Name:</label>
        <label>
            <input type="text" name="lastName" value="${sessionScope.user.lastName}" required>
        </label><br>

        <input type="submit" value="Join Now">
    </form>
</div>

<%@ include file="../includes/footer.jsp" %>

