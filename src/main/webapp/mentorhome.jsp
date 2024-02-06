<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<script src="https://kit.fontawesome.com/296704afc9.js" crossorigin="anonymous"></script>
<style>

ul 
{
  list-style-type: none;
  margin: 0;
  padding: 0px;
  overflow: hidden;
  background-color: none;
}
.imageColumn {
    float: 2px;
align: left;
   width: 25%;
   padding-top: 0px;
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
  padding: 10px 10px;
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

<h1 align=center>Mentor Home</h1>


<body style="background: url(images/mentor.jpg) no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: 60%;">

<br>

<ul>
<li><a href="mentorlogin">Logout&nbsp;<i class="fa-solid fa-arrow-right-from-bracket"></i></a></li>
 <li><a href="viewteamsbymentor">View Teams&nbsp;<i class="fa-solid fa-eye"></i></a></li>
  <li><a href="viewmentor">View Profile&nbsp;<i class="fa-solid fa-eye"></i></a></li>
    <li><a class="active" href="mentorhome"><i class="fa-solid fa-house">&nbsp;</i>Home</a></li>
</ul>

<h2 align=left>Welcome&nbsp;<c:out value="${euname}"></c:out></h2>


</div>
</body>
</html>

 
