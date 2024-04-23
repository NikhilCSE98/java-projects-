<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
</head>
<body>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    if (username != null && password != null && username.equals("nikhil") && password.equals("Nikhil@9728")) {
        response.sendRedirect("dashboard.jsp");
    } else {
        response.sendRedirect("login.jsp?error=1");
    }
%>
</body>
</html>
 