
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8"  isELIgnored="false"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Create Customer</title>
</head>
<style>
.container{
        width:40%;
        border:2px solid black;
        margin:auto;
        padding:1%;
    }
    .button {
      border:0.5px solid black;
      color: white;
      text-align: center;
      text-decoration: none;
      display: inline-block;
      font-size: 16px;
      cursor: pointer;
    }
    .button2 {background-color: #4CAF50;}
    .button1 {background-color: red;}
    .button3 {background-color: skyblue;}
</style>

<body>
<h2 align="center" style="font-size:50px">Delete User Detail Using User_Code</h2><br>
<p align="center"><c:if test="${msg != null}">
    <i style="color: cornflowerblue;">${msg}</i>
</c:if>
</p>
<div class="container">
    <h3>User Detail</h3>
    <div class="container">
        <form:form action="deleteacustomer" method="post" >
            <div class="customer-form">
                <label class="required" for="userCode">Enter User_Code</label>
                <input type="number" name="userCode" id="userCode" placeholder="User_Code" required><br>
            </div>
            <br>
            <input class="button button1" type="submit" value="Delete & Save">
            <input class="button button2" type="reset" value="Reset">
        </form:form>
    </div>
    <a href="index.jsp" id="home"><button class="button button3">Home</button></a>
</div>


</body>
</html>
