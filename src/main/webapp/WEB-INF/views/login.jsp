<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8"  isELIgnored="false"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Form</title>

</head>
<style>
body
{
    margin: 0;
    padding: 0;
    background-color:#6abadeba;
    font-family: 'Arial';
}
.container{

        width: 382px;
        overflow: hidden;
        margin: auto;
        padding: 80px;
        background: #23463f;
        border-radius: 15px ;

}
h1{
    text-align: center;
    color: #277582;
    padding: 20px;
    font-size:60px;
}
h2{
    text-align: center;
    color: #277582;
    padding: 20px;
}
label{
    color: #08ffd1;
    font-size: 17px;
}
#username{
    width: 300px;
    height: 30px;
    border: none;
    border-radius: 3px;
    padding-left: 8px;
}
#password{
    width: 300px;
    height: 30px;
    border: none;
    border-radius: 3px;
    padding-left: 8px;

}
span{
    color: white;
    font-size: 17px;
}
a{
    float: right;
    background-color: grey;
}
.button {
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

<div class="container">
    <form:form method="post" action="process-login">
        <label><b>User Name
        </b>
        </label>
        <input type="text" name="username" id="username" placeholder="Username">

        <br><br>
        <label><b>Password
        </b>
        </label>
        <input type="password" name="password" id="password" placeholder="Password">
        <br><br>
        <div class="btns">
        <button class="button button2" type="submit">Login</button>
        <button class="button button1" type="reset">Reset</button>
        </div>
    </form:form>
</div>
</body>
</html>