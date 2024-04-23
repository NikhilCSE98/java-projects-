<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Medicine Details</title>
    <style>
        body {
            background-image: url("image.jpeg");
            background-size: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
    </style>
</head>
<body>
    <div>
        <h1>Medicine Details</h1>
        <p>Name: <%= request.getParameter("medicine") %></p>
        <p>Price: Rs<%= request.getParameter("price") %></p>
        <form action="Buy_Order.jsp" method="post">
            <input type="hidden" name="medicine" value="<%= request.getParameter("medicine") %>">
            <input type="hidden" name="price" value="<%= request.getParameter("price") %>">
            Quantity: <input type="number" name="quantity" value="1" min="1"><br>
            <input type="submit" value="Buy">
        </form>
    </div>
</body>
</html>