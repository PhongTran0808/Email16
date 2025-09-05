<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <title>Exercise Selector</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f7fa;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background: #ffffff;
            padding: 40px 60px;
            border-radius: 12px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.1);
            text-align: center;
        }
        h1 {
            color: #333;
            margin-bottom: 20px;
        }
        p {
            margin-bottom: 25px;
            color: #666;
            font-size: 16px;
        }
        ul {
            list-style: none;
            padding: 0;
        }
        ul li {
            margin: 12px 0;
        }
        a {
            display: inline-block;
            padding: 12px 25px;
            background: #0077cc;
            color: #fff;
            text-decoration: none;
            border-radius: 6px;
            transition: background 0.3s;
        }
        a:hover {
            background: #005fa3;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Welcome</h1>
    <p>Chọn bài tập:</p>
    <ul>
        <li><a href="ex6-1/index.jsp">Exercise 6-1: Email List</a></li>
        <li><a href="ex6-2/index.jsp">Exercise 6-2: Survey</a></li>
    </ul>
</div>
</body>
</html>
