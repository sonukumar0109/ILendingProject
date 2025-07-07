<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
        pageEncoding="ISO-8859-1" isELIgnored="false"%>
<html>
<head>
 <title>Welcome To IBanking</title>
     <style>
       .button {
         display: inline-block;
         padding: 10px 20px;
         text-align: center;
         text-decoration: none;
         color: #ffffff;
         background-color: #7aa8b7;
         border-radius: 6px;
         outline: none;
       }
       .button {
         border: none;
         color: white;
         padding: 16px 32px;
         text-align: center;
         text-decoration: none;
         display: inline-block;
         font-size: 16px;
         margin: 4px 2px;
         transition-duration: 0.4s;
         cursor: pointer;
       }

       .button1 {
         height:30px;
         width:180px;
         background-color: white;
         margin:25px;
         color: black;
         border: 2px solid #7303fc;
       }
       .button1:hover {
         background-color: #7303fc;
         color: white;
       }
       .button2 {
         height:30px;
         width:180px;
         margin:25px;
         background-color: white;
         color: black;
         border: 2px solid #fc0303;
       }
       .button2:hover {
         background-color: #fc0303;
         color: white;
       }
       .center {
         display: flex;
         justify-content: center;
         align-items: center;
         height: 200px;
       }
     </style>
   </head>
   <body style="background-color:MediumSeaGreen">
   <h1 align="center" style="font-size:60px">Welcome To IBanking</h1><br>
   <h3 align="center">Select the option to continue </h3>
     <div class="center">
            <a class="button button1" href ="/IBankingProject/maker">Maker</button></a>
            <a class="button button2" href = "/IBankingProject/checker">Checker</button></a>
     </div>
   </body>
</html>
