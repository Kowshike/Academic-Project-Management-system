<%@ page import="java.util.List" %>
<%@ page import="com.klef.jfsd.springboot.model.StudentTeam" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register Student Team</title>
    <!-- Add your CSS styles or links to external stylesheets here -->
</head>

<body>
    <h2>Register Student Team</h2>
    <form action="registerstudentteam" method="post">
        <!-- Your form fields for student team information -->
        <label for="student1">Student 1 Name:</label>
        <input type="text" id="student1" name="student1" required><br>
        
        <label for="student2">Student 2 Name:</label>
        <input type="text" id="student2" name="student2" required><br>
        
        <label for="student3">Student 3 Name:</label>
        <input type="text" id="student3" name="student3" required><br>
        
        <input type="submit" value="Register Team">
    </form>
</body>

</html>
