<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registered Student Teams</title>
<style>
body {
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
ul {
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
  background-color: #18181b;
  box-shadow: 0 4px 8px 0 #0ffff, 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}

.imageColumn {
  float: left;
  align: left;
  width: 25%;
  padding-top: 0px;
}

li {
  float: right;
}

li a {
  display: block;
  color: white;
  font-size: 20px;
  text-align: center;
  padding: 10px 20px;
  text-decoration: none;
}
.active {
  background-color: none;
  color: white;
}
a {
  color: white;
}
li a:hover {
  background-color: none;
  color: white;
}
i {
  color: white;
}
h1 {
  color: white;
}
</style>
</head>
<body>
    <h2>Registered Student Teams</h2>
    <table border="1">
        <tr>
            <th>Team ID</th>
            <th>Student 1</th>
            <th>Student 2</th>
            <th>Student 3</th>
        </tr>
        <c:forEach var="team" items="${teamlist}">
            <tr>
                <td>${team.id}</td>
                <td>${team.student1}</td>
                <td>${team.student2}</td>
                <td>${team.student3}</td>
            </tr>
        </c:forEach>
    </table>
</body>

</html>
