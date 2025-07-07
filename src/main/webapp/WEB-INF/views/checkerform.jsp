
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
    <title>Checker Authorization</title>
</head>
<body>
<form:form action="checkerauthorization" method="post" >
<table>
    <thead>
    <tr>
        <th>Accept</th>
        <th>Reject</th>
        <th>No Action</th>
        <th>User Code</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Group Code</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="custList" items="${customerArrayList}">
        <tr>
            <td><input type="checkbox" id="accept" name="accept" value=""></td>
            <td><input type="checkbox" id="reject" name="reject" value=""></td>
            <td><input type="checkbox" id="noaction" name="noaction" value=""></td>
            <td><c:out value="${custList.userCode}"></c:out></td>
            <td><c:out value="${custList.firstName}"></c:out></td>
            <td><c:out value="${custList.lastName}"></c:out></td>
            <td><c:out value="${custList.groupCode}"></c:out></td>
        </tr>

    </c:forEach>
    </tbody>
</table>
</form:form>
<br><br>
<!-- u should have the action ="logout" ---- is manadatory -->
<form:form  action="logout" method="post">
    <input type="submit" value="logout"/>
</form:form>
<br><br>
<a href="index.jsp" id="home"><button>HOME</button></a>
</body>
</html>