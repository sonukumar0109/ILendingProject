<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>MakerDashboard</title>
</head>
<style>
.container{
background-color: #96D4D4;
  text-align:center;
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
.button1 {background-color: #4CAF50;}
.button2 {background-color: skyblue;}
.button3 {background-color: orange;}
.button4 {background-color: #008CBA;}

div{
         margin-left:auto;
         margin-right:auto;
         padding-left:20%
}
</style>
<body">
<h1 align="center" style="font-size:50px">Welcome to Maker Dashboard</h1>
<div class="content">
    <a href ="/IBankingProject/insertCustomer"><button class="button button1">Create a customer</button></a>
    <a href="/IBankingProject/updateCustomer"><button class="button button2">Update Customer</button></a>
    <a href="/IBankingProject/viewCustomer"><button class="button button3">View Customer</button></a>
    <a href="/IBankingProject/deleteCustomer"><button class="button button4">Delete Customer</button></a>
</div>
</body>
</html>
