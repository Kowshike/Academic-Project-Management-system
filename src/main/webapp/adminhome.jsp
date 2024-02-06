<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:ui="http://xmlns.jcp.org/jsf/facelets"
      xmlns:h="http://xmlns.jcp.org/jsf/html"
      xmlns:f="http://xmlns.jcp.org/jsf/core">


<!DOCTYPE html>
<html>
<head>
<style>
#mySidenav a {
  position: absolute;
  left: -20px;
  transition: 0.2s;
  padding: 20px;
  width: 90px;
  text-decoration: none;
  font-size: 20px;
  color: white;
  border-radius: 0 5px 5px 0;
}

#mySidenav a:hover {
  left: 0;
  
}
#adminhome {
  top: 24px;
  background-color: #2196F3;
}
#addmentor {
  top: 80px;
  background-color: #f44336;
}

#addstudent {
  top: 160px;
  background-color: blueviolet;
}


#viewmentors {
  top: 240px;
  background-color: #555;
}
#viewstudents {
  top: 320px;
  background-color: #2196F3;
}
#projectstatus {
  top: 400px;
  background-color: #04AA6D;
}
#logout {
  top: 480px;
  background-color: gray;
}


ul 
{
  list-style-type: none;
  margin: 0;
  padding: 0px;
  overflow: hidden;
  background-color: white;
}

li 
{
  float: left;
    border-right: 1px solid white;
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
  background-color: #2980b9;
  color: white;
}
</style>
</head>
<body>

<h1 align=center>Admin Home</h1>
<body style="background: url(images/admin.jpg) no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;">


<div id="mySidenav" class="sidenav"></body>
<ul>

 <li><a id="projectstatus" href="projectstatus">Project Status</a></li>
 <li><a id="viewstudents" href="viewstudents">View Students</a></li>
 <li><a id="addstudent" href="addstudent">Add Student</a></li>
  <li><a id="viewmentors" href="viewmentors">View Mentors</a></li>
  <li><a id="addmentor" href="addmentor">Add Mentor</a></li>
  <li><a id="adminhome" class="active" href="adminhome">Home</a></li>
  <li><a id="logout" href="adminlogin">Logout</a></li>

</ul>

</div>
<h3 align=right>Welcome&nbsp;<c:out value="${auname}"></c:out></h3>



</div>
</body>
</html>

 
