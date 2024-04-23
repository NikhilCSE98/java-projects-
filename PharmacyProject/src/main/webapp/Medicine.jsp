<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="style.css" rel="spreadsheet">
<style type="text/css">
    .inp_details{
	width:100%;
	height: 200px;
	margin:20px;
	text-align:center;
}
.inp_details h3{
   margin-top:50px;
}
</style>
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
     <img src="https://imgs.search.brave.com/RHa7j_S4ETnYfvGVZY9AunsYAGCUeOXBHiyagvHkOR8/rs:fit:500:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzAxLzUwLzk2Lzc1/LzM2MF9GXzE1MDk2/NzU1NV9xMjlueDc5/dlNTR2tSZmVjSTh1/dEl5MU1OUVJ0czlW/WS5qcGc"></div>  
       <form class="inp_details" action="Search_Medicine.jsp" method="post">
          <h3>Enter the disease name for which you want to medicine</h3>
          <input type="text" name="disease" required>
          <input type="submit" name="submit">
       </form>
       
       
    <jsp:include page="footer.jsp" />
</body>
</html>


