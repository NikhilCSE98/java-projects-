<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Medical Store</title>
    <link href="style.css" rel="spreadsheet">
</head>
<body>
    <div id="header">
        <div id="navigation">
            <ul>
                <li><a href="dashboard.jsp">Home</a></li>
                <li><a href="Medicine.jsp">Medicine</a></li>
                <li><a href="#contact_us">Contact Us</a></li>
                <li><a href="Lab_Test.jsp">Lab Test</a></li>           
            </ul>	
        </div>
    </div>
    
    <div class="homebg">
        <img src="https://imgs.search.brave.com/RHa7j_S4ETnYfvGVZY9AunsYAGCUeOXBHiyagvHkOR8/rs:fit:500:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzAxLzUwLzk2Lzc1/LzM2MF9GXzE1MDk2/NzU1NV9xMjlueDc5/dlNTR2tSZmVjSTh1/dEl5MU1OUVJ0czlW/WS5qcGc">
    </div>  

    <div id="medicine-list">
        <% 
            String userCondition = request.getParameter("disease");
            if (userCondition != null) {
                if (userCondition.equals("fever")) {
                    %>
                    <jsp:include page="Fever_Medicine_Card_List.html" />
                    <%
                } else if (userCondition.equals("cough")) {
                    %>
                    <jsp:include page="Cough_Medicine_Card_List.html" />
                    <%
                } else {
                    %>
                    <p>No specific medicine found for the condition provided.</p>
                    <%
                }
            } else {
                %>
                <p>Please provide a condition parameter to show specific medicine.</p>
                <%
            }
        %>
    </div>
    
    <jsp:include page="footer.jsp" />
</body>
</html>