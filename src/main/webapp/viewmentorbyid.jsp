<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>


<!DOCTYPE html>
<html>
<head>
<script src="https://kit.fontawesome.com/296704afc9.js" crossorigin="anonymous"></script>

<style>
body{
  background-color: #1c2a44;
}
th {
  background-color: #04AA6D;
  color: black;
  cursor: pointer;
}

th, td {
  padding: 10px;
  text-align: left;
  color: white;
}
ul 
{
  list-style-type: none;
  margin: 0;
  padding: 0px;
  overflow: hidden;
  background-color: none;

                width: 300px;
                display: flex;
                flex-direction: row;
                list-style: none;
                border-radius: 25px;
                
                background-color: #18181b
                boxshadow: 0 4px 8px 0 #0ffff, 0 6px 20px 0 rgba(0, 0, 0, 0.19);
               
}

li 
{
  float: right;
    border-right: none;
    
}

li a 
{
  display: block;
  color: white;
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
  color: white;
}

tr:nth-child(odd):hover{
background-color: #1c2a44;
transform: scale(1.5);
transition: transfrom 300ms ease-in;
}

tr:nth-child(even):hover{
background-color: #1c2a44;
transform: scale(1.5);
transition: transfrom 300ms ease-in;
}
</style>
</head>
<body>

<h1 align=center style=color:white>Details</h1>

<br>

<ul>
<li><a href="adminhome"><i class="fa-solid fa-house">&nbsp;</i>Home</a></li>
<li><a href="adminlogin">Logout&nbsp;<i class="fa-solid fa-arrow-right-from-bracket"></i></a></li>
  
  
  
</ul>


<table align=center border="1">

<tr><th>ID:</th>&nbsp;<td>${mentor.id}</td></tr>
<tr><th>Name:</th>&nbsp;<td>${mentor.name}</td></tr>
<tr><th>Gender:</th>&nbsp;<td>${mentor.gender}</td></tr>
<tr><th>Date of Birth:</th>&nbsp;<td>${mentor.dateofbirth}</td></tr>
<tr><th>Department:</th>&nbsp;<td>${mentor.department}</td></tr>
<tr><th>Designation:</th>&nbsp;<td>${mentor.designation}</td></tr>
<tr><th>Domain:</th>&nbsp;<td>${mentor.domain}</td></tr>
<tr><th>Salary:</th>&nbsp;<td>${mentor.salary}</td></tr>
<tr><th>Location:</th>&nbsp;<td>${mentor.location}</td></tr>
<tr><th>Email ID:</th>&nbsp;<td>${mentor.emailid}</td></tr>
<tr><th>Contact No:</th>&nbsp;<td>${mentor.contactno}</td></tr>



</table>



</body>
</html>