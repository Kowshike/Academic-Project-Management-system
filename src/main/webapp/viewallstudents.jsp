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
i
{
color: white;}
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
transform: scale(1.2);
transition: transfrom 300ms ease-in;
}

tr:nth-child(even):hover{
background-color: #1c2a44;
transform: scale(1.2);
transition: transfrom 300ms ease-in;
}
</style>
</head>
<body>

<h1 align=center style=color:white>Students list</h1>



<ul>
  <li><a href="adminhome"><i class="fa-solid fa-house">&nbsp;</i>Home</a></li>
  <li><a href="adminlogin">Logout&nbsp;<i class="fa-solid fa-arrow-right-from-bracket"></i></a></li>
</ul>

<br>

<table align=center border=2>

<tr>

<th>ID</th>
<th>Name</th>
<th>Gender</th>
<th>Date of Birth</th>
<th>Branch</th>
<th>Cgpa</th>
<th>Email ID</th>
<th>Username</th>
<th>Contact No</th>
<th>Action</th>

</tr>

<c:forEach items="${studentlist}" var="student">

<tr>

<td> <c:out value="${student.id}"></c:out>   </td>
<td> <c:out value="${student.name}"></c:out>   </td>
<td> <c:out value="${student.gender}"></c:out>   </td>
<td> <c:out value="${student.dateofbirth}"></c:out>   </td>
<td> <c:out value="${student.branch}"></c:out>   </td>
<td> <c:out value="${student.cgpa}"></c:out>   </td>
<td> <c:out value="${student.emailid}"></c:out>   </td>
<td> <c:out value="${student.username}"></c:out>   </td>
<td> <c:out value="${student.contactno}"></c:out>   </td>
<td> 

<a href='<c:url value='deletestudent?id=${student.id}'></c:url>'><i class="fa-solid fa-trash"></i></a>&nbsp;&nbsp;
<a href='<c:url value='viewstudentbyid?id=${student.id}'></c:url>'><i class="fa-solid fa-eye"></i></a>&nbsp;&nbsp;

</td>


</tr>

</c:forEach>

</table>

</body>
</html>