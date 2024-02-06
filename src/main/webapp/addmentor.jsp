<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ADD MENTOR</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="./style.css">

    <style>
        * {
    box-sizing: border-box;
}

body {
    font-family: Arial, Helvetica, sans-serif;
    margin: 0;
    padding: 0;
    background-color: blueviolet;
}

h2,
p {
    margin: 0;
}

main {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

.container {
    background-color: #fff;
    padding: 40px 20px;
    border-radius: 5px;
    width: 400px;
    max-width: 100%;
    box-shadow: 0 0 10px 1px rgba(61, 61, 61, 0.19), 0 0 15px 1px rgba(63, 63, 63, 0.23);
}

.container.complete {
    visibility: hidden;
}

.container .header {
    padding-bottom: 20px;
}

h2 {
    font-size: 20px;
}

.form-control {
    margin-bottom: 10px;
    position: relative;
}

.form-control label {
    font-weight: bold;
    font-size: 13px;
}

.form-control input {
    margin-top: 2px;
    display: block;
    width: 100%;
    padding: 10px;
    border-radius: 4px;
    border: 2px solid blueviolet;
    font-family: inherit;
}

.form-control i {
    position: absolute;
    top: 29px;
    right: 10px;
    font-size: 24px;
    visibility: hidden;
}

.form-control input:focus {
    outline: none;
}

.form-control.success input {
    border: 2px solid green;
}

.form-control.success .fa-smile-o {
    color: green;
    visibility: visible;
}


/* Animation code to move form fields */
@keyframes inputMove {
    0% {
        transform: translateX(5px);
    }
    25% {
        transform: translateX(-5px);
    }
    50% {
        transform: translateX(5px);
    }
    75% {
        transform: translateX(-5px);
    }
    100% {
        transform: translateX(0px);
    }
}

/* Adding the animation properties to the error CSS selector */
.form-control.error input {
    border: 2px solid red;
    animation-name: inputMove;
    animation-duration: .5s;
    /* animation-iteration-count: 3; */
}

.form-control.error .fa-frown-o {
    color: red;
    visibility: visible;
}

.container.complete .fa {
    visibility: hidden;
}


/* .container.error {
    animation-name: inputMove;
    animation-duration: .5s;
} */

.form-control .errorMessage {
    visibility: hidden;
    margin: 2px 0 12px 0;
    font-weight: bold;
    font-size: 11px;
}

.form-control.error .errorMessage {
    visibility: visible;
    color: red;
}

button {
    font-family: inherit;
    width: 100%;
    padding: 10px;
    background-color: blueviolet;
    color: #fff;
    font-size: 15px;
    border-radius: 4px;
    border: 2px solid blueviolet;
    cursor: pointer;
    transition: all .5s ease-in-out;
}

button:focus {
    outline: none;
}

button:hover {
    color: blueviolet;
    border: 2px solid blueviolet;
    background: transparent;
}

.complete-modal {
    visibility: hidden;
    position: fixed;
    top: 45%;
    left: 41%;
    background-color: #fff;
    padding: 40px 20px;
    border-radius: 5px;
    width: 300px;
    max-width: 100%;
    box-shadow: 0 0 10px 1px rgba(61, 61, 61, 0.19), 0 0 15px 1px rgba(63, 63, 63, 0.23);
    color: green;
    text-align: center;
}

.container.complete .complete-modal {
    visibility: visible;
}

/* Animation code to move bubbles up */
@keyframes animCircle {
    0% {
        transform: translateY(0);
        opacity: 0;
    }
    50% {
        opacity: 1;
    }
    75% {
        opacity: 1;
    }
    100% {
        transform: translateY(-100vh);
        opacity: 0;
    }
}

.animate-circles {
    width: 100%;
    display: flex;
    justify-content: space-around;
    position: absolute;
    bottom: -10vh;
    z-index: -1;
    visibility: hidden;
}

.animate-circles.complete {
    visibility: visible;
}


.animate-circles div {
    animation: animCircle 7s infinite linear;
}

.animate-circles div:nth-child(1) {
    animation-delay: 5s;
}
.animate-circles div:nth-child(3) {
    animation-delay: 2s;
}

.animate-circles div:nth-child(7) {
    animation-delay: 6s;
}

.animate-circles div:nth-child(5) {
    animation-delay: 4s;
}

.animate-circles div:nth-child(9) {
    animation-delay: 4s;
}

.animate-circles div:nth-child(8) {
    animation-delay: 2s;
}

.animate-circles .circle {
    background-color: lawngreen;
    height: 40px;
    width: 40px;
    border-radius: 50%;
}

.animate-circles .red {
    background-color: red;
    height: 30px;
    width: 30px;
}

.animate-circles .blue {
    background-color: blue;
    height: 20px;
    width: 20px;
}

.animate-circles .orange {
    background-color: orange;
    height: 40px;
    width: 40px;
}
.blink {
  animation: blink 1s steps(1, end) infinite;
}

@keyframes blink {
  0% {
    opacity: 1;
  }
  50% {
    opacity: 0;
  }
  100% {
    opacity: 1;
  }
}

.button {
  background-color: blueviolet;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}

input[type=text],input[type=password],input[type=number],input[type=email],
select,input[type=date]
{
  width: 100%;
  padding: 4px 2px;
  margin: 2px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 1px;
  box-sizing: border-box;
}

label 
{
  padding: 12px 2px 2px 0;
  display: inline-block;
  font-weight: bold;
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
background-color: bluewhite;
color: black;
}
li a:hover {
  background-color: blueviolet;
  color: white;
}
        </style>


</head>
<ul>
    <li><a href="adminhome">Home</a></li>
    <li><a href="viewmentors">Mentorslist</a></li>
    <li><a class="active" href="adminlogin">Logout</a></li>
     
  </ul>
<body>
<br><br>
    <main>
        <div class="container">
            <div class="header">
                <h2>Mentor Registration</h2>
                <span class="blink">
<h3 align=center style="color: green"><c:out value="${msg}"/></h3>
</span>


            </div>
           

<form:form action="registermentor" method="post" modelAttribute="mentor">

<table align=center>

<tr>
<td><label>Name</label></td>
<td>
<form:input path="name" required="required"></form:input>
</td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Gender</label></td>
<td>
<form:radiobutton path="gender" value="Male" required="required"/>Male
<form:radiobutton path="gender" value="Female" required="required"/>Female
</td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Date of Birth</label></td>
<td><form:input path="dateofbirth" required="required" placeholder="DD/MM/YYYY"/></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Department</label></td>
<td>
<form:select path="department" required="required">
<form:option value="-1">---Select---</form:option>
<form:option value="CSE-H">CSE-H</form:option>
<form:option value="CSE">CSE</form:option>
<form:option value="AIDS">AIDS</form:option>
<form:option value="MECH">MECH</form:option>
<form:option value="CIVIL">CIVIL</form:option>
<form:option value="BBA">BBA</form:option>

</form:select>
</td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Designation</label></td>
<td>
<form:select path="designation" required="required">
<form:option value="-1">---Select---</form:option>
<form:option value="HOD">HOD</form:option>
<form:option value="ASST HOD">ASST HOD</form:option>
<form:option value="CC">CC</form:option>
<form:option value="PROFESSOR">PROFESSOR</form:option>
<form:option value="ASST PROFESSOR">ASST PROFESSOR</form:option>
</form:select>
</td>
</tr>

<tr><td></td></tr>
<tr>
<td><label>Domain</label></td>
<td><form:input path="domain" required="required" placeholder="Domain name"/></td>
</tr>

<tr><td></td></tr>
<tr>
<td><label>Salary</label></td>
<td><form:input path="salary" value="0.00" required="required"/></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Location</label></td>
<td><form:input path="location" required="required"/></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Email ID</label></td>
<td><form:input path="emailid" required="required"/></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Username</label></td>
<td><form:input path="username" required="required"/></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Password</label></td>
<td><form:password path="password" required="required"/></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Contact No</label></td>
<td><form:input path="contactno" required="required"/></td>
</tr>

<tr><td></td></tr>
<tr><td></td></tr>

<tr align=center>
<td colspan=2><input type="submit" value="Register" class="button"></td>
</tr>

</table>

</form:form>


         

        </div>
    </main>
    
    <div class="animate-circles">
        <div class="red circle"></div>
        <div class="blue circle"></div>
        <div class="red circle"></div>
        <div class="circle"></div>
        <div class="orange circle"></div>
        <div class="red circle"></div>
        <div class="circle"></div>
        <div class="red circle"></div>
        <div class="blue circle"></div>
        <div class="orange circle"></div>
    </div>
   
   
</body>


</body>



</html>