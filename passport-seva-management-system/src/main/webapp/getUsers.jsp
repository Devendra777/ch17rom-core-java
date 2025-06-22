<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page  isELIgnored="false" %>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<style>
table, th, td {
  border: 1px solid black;
}
</style>
</head>
<body>

<h1>The table element</h1>

<table>
  <tr>
    <th>Sl No</th>
    <th>Given Name</th>
     <th>Sur Name</th>
     <th>Email Id</th>
      <th>Password</th>
       <th>Confirm Password</th>
    <th>
  </tr>

  <c:forEach  items="${ listOfUsers }"  var="dto" >
  <tr>
   <td>${ dto.getUserId() }</td>
   <td>${ dto.getGivenName() }</td>
   <td>${ dto.getSurName() }</td>
   <td>${ dto.getEmailId() }</td>
   <td>${ dto.getPassword() }</td>
    <td>${ dto.getConfirmPassword() }</td>
    </tr>
  </c:forEach>


</table>

</body>
</html>