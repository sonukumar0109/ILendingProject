<%@page import="nucleus.model.Customer"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8"  isELIgnored="false"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Customer Details</title>
</head>
<style>
table, th, td {
  border: 1px solid white;
  border-collapse: collapse;
}
th, td {
  background-color: #96D4D4;
  text-align:center;
}
a{
margin:auto;
        padding:41.8%;
}
.button {
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
.button1 {background-color: red;}
.button2 {background-color: #008CBA;}
</style>
<body>
<h2 align="center"style="font-size:50px">List of all Customer Details</h2>
<table style="width:100%">
    <thead>
    <tr>
        <th>User Code</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Organization Code</th>
        <th>Organization Name</th>
        <th>Group Code</th>
        <th>Group Name</th>
        <th>User Type</th>
        <th>Mobile Number</th>
        <th>Email</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="custList" items="${customerArrayList}">
        <tr>
            <td><c:out value="${custList.userCode}"></c:out><br> </td>
            <td><c:out value="${custList.firstName}"></c:out><br> </td>
            <td><c:out value="${custList.lastName}"></c:out><br> </td>
            <td><c:out value="${custList.organizationCode}"></c:out><br> </td>
            <td><c:out value="${custList.organizationName}"></c:out><br> </td>
            <td><c:out value="${custList.groupCode}"></c:out><br> </td>
            <td><c:out value="${custList.groupName}"></c:out><br> </td>
            <td><c:out value="${custList.userType}"></c:out><br> </td>
            <td><c:out value="${custList.mobileNo}"></c:out><br> </td>
            <td><c:out value="${custList.email}"></c:out><br> </td>
        </tr>

    </c:forEach>
    </tbody>
</table>

<br><br>
<form:form style="margin: auto; width: 220px;" action="logout" method="post">
    <input type="submit" class= "button button1" value="logout"/>
</form:form>
<a href="index.jsp" id="home"><button class="button button2">Home</button></a>
<br><br>

</body>
</html>