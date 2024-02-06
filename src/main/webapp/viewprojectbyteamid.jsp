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
a
{
color:white;
}
</style>
</head>
<body>

<h1 align=center color: white style=color:white>Project View</h1>

<br>

<ul>
  <li><a href="studenthome"><i class="fa-solid fa-house">&nbsp;</i>Home</a></li>
<li><a href="studentlogin">Logout&nbsp;<i class="fa-solid fa-arrow-right-from-bracket"></i></a></li>

  
  
</ul>


<table align=center border="1">

<tr>

<th>Team Lead</th>
<th>Project ID</th>
<th>Project Name</th>
<th>Description</th>
<th>Action</th>
</tr>

<tr>


<td> <c:out value="${project.teamlead}"></c:out>   </td>
<td> <c:out value="${project.name}"></c:out>   </td>
<td> <c:out value="${project.description}"></c:out>   </td>
<td> <c:out value="${project.researcharea}"></c:out>   </td>
<td> 


<a href='<c:url value='updateform?id=${project.id}&lead=${project.teamlead}'></c:url>'>Update Status</a>&nbsp;&nbsp;

</td>


</tr>
</table>



</body>
</html>