
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
        .button1 {background-color: #4CAF50;}
        .button2 {background-color: red;}
        .button3 {background-color: skyblue;}
</style>
<body style="background-color:skyblue">
<h2 align="center"style="font-size:50px">Update User Detail</h2><br>
<p align="center"><c:if test="${msg != null}">
    <i style="color: cornflowerblue;">${msg}</i>
</c:if>
</p>
<div class="container" >
    <h4>Status</h4>
    <div class="container">
        <form>
            <div class="customer-form" id="userStatus">
                <label for="status">Active/Inactive</label>
                <select name="status" id="status" required>
                    <option value="active" selected>active</option>
                    <option value="inactive">inactive</option>
                </select><br>
            </div>
        </form>
    </div>
</div>
<div class="container">
    <h4>User Detail</h4>
    <div class="form">
        <form:form action="updateacustomer" method="post" >
            <table>
                <tr>
                    <td><label class="required" for="userCode">User Code</label></td>
                    <td><input type="number" name="userCode" id="userCode" placeholder="Enter UserCode" required></td>
                </tr>
                <tr>
                    <td><label class="required" for="firstName">First Name</label></td>
                    <td><input type="text" name="firstName" id="firstName" placeholder="Enter Name"required></td>
                </tr>
                <tr>
                    <td><label class="required" for="organizationCode">Organization Code</label></td>
                    <td><input type="number" name="organizationCode" id="organizationCode" placeholder="Enter Organization Code" disabled></td>
                </tr>
                <tr>
                    <td><label class="required" for="groupCode">Group Code</label></td>
                    <td><input type="text" name="groupCode" id="groupCode" placeholder="Enter Group Code"disabled></td>
                </tr>
                <tr>
                    <td><label class="required" for="userType">User Type</label></td>
                    <td>
                    <select name="userType" id="userType" disabled>
                            <option value="Static" selected>Static</option>
                            <option value="Dynamic">Dynamic</option>
                    </select><br>
                    </td>
                </tr>
                <tr>
                    <td><label class="required" for="mobile">Mobile Number</label></td>
                    <td><input type="text" name="mobile" id="mobile" placeholder="Enter Mobile Number"required></td>
                </tr>

                <tr>
                    <td><label class="required" for="email">E-Mail Address</label></td>
                    <td><input type="email" name="email" id="email" placeholder="Enter E-Mail"required></td>
                </tr>

                <tr>
                    <td><label class="required" for="lastName">Last Name</label></td>
                    <td><input type="text" name="lastName" id="lastName" placeholder="Enter Last Name"required></td>
                </tr>
                <tr>
                    <td><label class="required" for="organizationName">Organization Name</label></td>
                    <td><input type="text" name="organizationName" id="organizationName" placeholder="Enter Organization Name"disabled></td>
                </tr>
                <tr>
                    <td><label class="required" for="groupName">Group Name</label></td>
                    <td><input type="text" name="groupName" id="groupName" placeholder="Enter Group Name"disabled></td>
                </tr>
                <tr>
                <td></td>
                    <td>
                    <input class="button button1" type="submit" value="Save">
                    <input class="button button2" type="reset" value="Reset">
                    </td>
                </tr>
            </table>
        </form:form>
    </div>
    <a href="index.jsp" id="home"><button class="button button3">Home</button></a>
</div>
</body>
</html>
