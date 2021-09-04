<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 8/3/2021
  Time: 10:29 AM
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
    <h2>Create</h2>
    <form action="/hocvien/create" method="post">
        <table class="table table-bordered table-sm">

            <tbody>
            <tr>
                <td><input type="text" placeholder="nhập tên" name="name"></td>
            </tr>
            <tr>
                <td><input type="text" placeholder="nhập birthday" name="birthday"></td>
            </tr>
            <tr>
                <td><input type="text" placeholder="nhập địa chỉ" name="address"></td>
            </tr>
            <tr>
                <td><input type="text" placeholder="nhập số điện thoại" name="phone"></td>
            </tr>
            <tr>
                <td><input type="text" placeholder="nhập email" name="email"></td>
            </tr>
            <tr>
                <td><input type="text" placeholder="nhập lớp" name="classroom"></td>

            </tr>
            <tr>
                <td>
                    <button type="submit" class="btn btn-success">Create</button>
                    |<a href="/ViewHocvien/show.jsp" class="btn btn-secondary">Back</a>
                </td>
            </tr>
            </tbody>
        </table>
    </form>
</div>

</body>
</html>

