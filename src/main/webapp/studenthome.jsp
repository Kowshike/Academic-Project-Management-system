<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<div id="session-expiry-message" style="display: none;">
    Your session has been expired. Please login again to continue.
  </div>
  
  <script>
    let timeLeft = 120; // in seconds
    let timer = setInterval(function() {
      timeLeft--;
      if (timeLeft <= 0) {
        clearInterval(timer);
        window.location.href = '/logout';
        document.getElementById('session-expiry-message').style.display = 'block';
      }
    }, 1000);
  </script>
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
#studenthome{
  top: 28px;
  background-color: #04AA6D;
}
#viewstudent {
  top: 80px;
  background-color: #2196F3;
}
#viewproject {
  top: 160px;
  background-color: brown;
}

#addstudentteam {
  top:220px;
  background-color: blueviolet;
}

#mentorselection {
  top: 300px;
  background-color: #f44336;
}
#registerproject {
  top: 380px;
  background-color: #555;
}
#studentlogin {
  top: 460px;
  background-color: #2196F3;
}



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
  float: side;
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
span
{
float: right;}
.active
{
background-color: pink;
color: black;
}
li a:hover {
  background-color: none;
  color: black;
}
</style>
</head>
<body>

<h1 align=center>Student Home</h1>


<body style="background: url(images/student.jpg) no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: 45%">

<div id="mySidenav" class="sidenav"></body>


<ul>
<li><a id="studentlogin" href="studentlogin">Logout</a></li>

<li><a id="addstudentteam" href="addstudentteam">Team Registration</a></li>
<li><a id="mentorselection" href="mentorselection">Mentor allocation</a></li>
 <li><a id="registerproject" href="addproject">Add Project</a></li>
 <li><a id="viewproject"  href="viewproject">My project</a></li>
  <li><a id="viewstudent" href="viewstudent">View Profile</a></li>
    <li><a id="studenthome" class="active" href="studenthome">Home</a></li>
</ul>



</div>

<h3 align=right>Welcome&nbsp;<c:out value="${suname}"></c:out></h3>

<span class="blink">
<h3 align=right style="color: red"><c:out value="${msg}"/></h3>
</span>
</div>
</body>
</html>

 
