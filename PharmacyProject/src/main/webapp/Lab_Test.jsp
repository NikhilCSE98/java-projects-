<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book Test Slot</title>
</head>
<body>
    <h3>Fill this form if you want to book a slot for test</h3>
    <form action="book_Slot.html" method="post">
        <label for="address">Address:</label><br>
        <input type="text" id="address" name="address" required><br><br>
        
        <label for="date">Date:</label><br>
        <input type="date" id="date" name="date" required><br><br>
        
        <label for="time">Time:</label><br>
        <input type="time" id="time" name="time" required><br><br>
        
        <label for="phone">Phone Number:</label><br>
        <input type="text" id="phone" name="phone" required><br><br>

<label for="test">Test:</label><br>
        <input type="text" id="test" name="test" required><br><br>
        <input type="submit" value="Book Slot">
    </form>
</body>
</html>