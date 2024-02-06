<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>


<!DOCTYPE html>
<html>
<head>
<script src="https://kit.fontawesome.com/296704afc9.js" crossorigin="anonymous"></script>
<style>
th {
  background-color: #04AA6D;
  color: white;
}

th, td {
  padding: 15px;
  text-align: left;
}
ul 
{
  list-style-type: none;
  margin: 0;
  padding: 0px;
  overflow: hidden;
  background-color:white;
}

li 
{
  float: right;
    border-right: none;
}

li a 
{
  display: block;
  color: black;
 font-size:20px;
  text-align: center;
  padding: 10px 20px;
  text-decoration: none;
}
.active
{
background-color: none;
color: black;
}
li a:hover {
  background-color: none;
  color: black;
}
</style>
</head>
<body>

<h1 align=center>My Profile</h1>

<br>

<ul>
<li><a href="adminlogin">Logout&nbsp;<i class="fa-solid fa-arrow-right-from-bracket"></i></a></li>
  <li><a href="adminhome"><i class="fa-solid fa-house">&nbsp;</i>Home</a></li>
  
  
</ul>


<table align=center border="1">

<tr><th>ID:</th>&nbsp;<td>${student.id}</td></tr>
<tr><th>Name:</th>&nbsp;<td>${student.name}</td></tr>
<tr><th>Gender:</th>&nbsp;<td>${student.gender}</td></tr>
<tr><th>Date of Birth:</th>&nbsp;<td>${student.dateofbirth}</td></tr>
<tr><th>Branch:</th>&nbsp;<td>${student.branch}</td></tr>
<tr><th>CGPA:</th>&nbsp;<td>${student.cgpa}</td></tr>
<tr><th>Email ID:</th>&nbsp;<td>${student.emailid}</td></tr>
<tr><th>Username:</th>&nbsp;<td>${student.username}</td></tr>
<tr><th>Contact No:</th>&nbsp;<td>${student.contactno}</td></tr>



</table>



</body>
</html>