<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="style.css" rel="spreadsheet">
</head>
<body>
   <div id="header">
	<div id="navigation">
    	<ul>
        	<li><a href="dashboard.jsp">Home</a></li>
            <li><a href="#about_us">About Us</a></li>
            <li><a href="Medicine.jsp">Medicine</a></li>
            <li><a href="Lab_Test.jsp">Lab Test</a></li>
            <li><a href="#contact_us">Contact Us</a></li>
        </ul>	
    </div>
</div>
   <div class="homebg">
     <img src="https://imgs.search.brave.com/RHa7j_S4ETnYfvGVZY9AunsYAGCUeOXBHiyagvHkOR8/rs:fit:500:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzAxLzUwLzk2Lzc1/LzM2MF9GXzE1MDk2/NzU1NV9xMjlueDc5/dlNTR2tSZmVjSTh1/dEl5MU1OUVJ0czlW/WS5qcGc"></div>  <jsp:include page="About_Us.jsp" />
      <jsp:include page="HomeCard.html" />
    <jsp:include page="footer.jsp" />
</body>
</html>