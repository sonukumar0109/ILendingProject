<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"  isELIgnored="false"%>

    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Checker</title>
</head>
<style>
body{
background-color: skyblue;
color: white;
}

h1 {
color: red;
margin:auto;
}

h6{
color: red;
margin:auto;
padding:2%;
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

<h1 align="center"> Access denied  for this page</h1>
<h6 align="center">******************************************</h6>
<h1 align="center"> You dont have permission to view this page</h1>
<form:form  action="logout" method="post">
<input class="button button1" type="submit" value="logout"/>
</form:form>
<a href="index.jsp" id="home"><button class="button button2">Home</button></a>

</body>
</html>