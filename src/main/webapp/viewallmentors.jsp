<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    

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
.imageColumn {
   float: 2px;
align: left;
   width: 25%;
   padding-top: 0px;
}

li 
{
  float: right;
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
color: white;
}

li a:hover {
  background-color: none;
  color: white;
}
i
{
color: white;}
h1
{
color: white;}

</style>
</head>
<body>

<h1 align=center>Mentorslist</h1>

<br>

<ul>
 <li><a class="active" href="adminhome"><i class="fa-solid fa-house">&nbsp;</i>Home</a></li>
  <li><a href="adminlogin">Logout&nbsp;<i class="fa-solid fa-arrow-right-from-bracket"></i></a></li>
   
 
</ul>

<br>

<table align=center border=2>

<tr>

<th>ID</th>
<th>Name</th>
<th>Gender</th>
<th>Date of Birth</th>
<th>Department</th>
<th>Designation</th>
<th>Domain</th>
<th>Salary</th>
<th>Location</th>
<th>Email ID</th>
<th>Username</th>
<th>Contact No</th>
<th>Action</th>

</tr>

<c:forEach items="${mentorlist}" var="mentor">

<tr>

<td> <c:out value="${mentor.id}"></c:out>   </td>
<td> <c:out value="${mentor.name}"></c:out>   </td>
<td> <c:out value="${mentor.gender}"></c:out>   </td>
<td> <c:out value="${mentor.dateofbirth}"></c:out>   </td>
<td> <c:out value="${mentor.department}"></c:out>   </td>
<td> <c:out value="${mentor.designation}"></c:out>   </td>
<td> <c:out value="${mentor.domain}"></c:out>   </td>
<td> <c:out value="${mentor.salary}"></c:out>   </td>
<td> <c:out value="${mentor.location}"></c:out>   </td>
<td> <c:out value="${mentor.emailid}"></c:out>   </td>
<td> <c:out value="${mentor.username}"></c:out>   </td>
<td> <c:out value="${mentor.contactno}"></c:out>   </td>
<td> 

<a href='<c:url value='deletementor?id=${mentor.id}'></c:url>'><i class="fa-solid fa-trash"></i></a>&nbsp;&nbsp;
<a href='<c:url value='viewmentorbyid?id=${mentor.id}'></c:url>'><i class="fa-solid fa-eye"></i></a>&nbsp;&nbsp;

</td>


</tr>

</c:forEach>

</table>

</body>
</html>