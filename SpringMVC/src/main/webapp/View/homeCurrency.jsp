<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 8/11/2021
  Time: 9:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/convert">
    <p> USD: </p>
    <input type="text" name="usd" placeholder="nhập USD">
    <p> Rate: </p>
    <input type="text" name="rate" placeholder="nhập rate">
    <br>
    <br>
    <input type="submit" value="convert">
</form>
<hr>
<h3>VNĐ: <p>${result}</p></h3>
</body>
</html>
