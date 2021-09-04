<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 8/12/2021
  Time: 10:46 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/calculates" >

    <hr>
    <input type="text" name="num1" placeholder="nhập giá trị 1">
    <input type="text" name="num2" placeholder="nhập giá trị 2">
    <br>
    <br>
    <button name="check" value="+">Addition(+)</button>
    <button name="check" value="-">Subtraction(-)</button>
    <button name="check" value="*">Multiplication(X)</button>
    <button name="check" value="/">Division(/)</button>
</form>
<hr>
<h2>Kết quả = : ${result}</h2>
</body>
</html>
