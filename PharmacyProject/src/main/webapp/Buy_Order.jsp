<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Purchase</title>
    <style>
        body {
            background-image: url("image.jpeg");
            background-size:100%;
          
        }
    </style>
</head>
<body>
    <h1>Thank you for your purchase!</h1>
    <p>Your medicine has been successfully purchased.</p>
    
    <%
        String medicine = request.getParameter("medicine");
        double price = Double.parseDouble(request.getParameter("price"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        double total = price * quantity;
        out.println("Medicine: " + medicine + "<br>");
        out.println("Quantity: " + quantity + "<br>");
        out.println("Total: Rs" + total +"<br>" );
    %>
    For go to home page,<a href="dashboard.jsp">click here</a>
</body>
</html>
